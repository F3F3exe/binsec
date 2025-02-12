#!/bin/bash
set -e

SOURCE="cmp_bytes.c"
EXTRA_SOURCE="Hacl_Policies.c"
BASELINE_LL="baseline.ll"
OPT_LL="temp.ll"
OUTPUT="a.out"

# List of LLVM passes that appear only in O1 
PASSES=(
   "scev-aa" "adce" "always-inline" "argpromotion" "break-crit-edges"  
"codegenprepare" "constmerge" "dce" "deadargelim" "dse" "function-attrs" "globaldce"  
"globalopt" "gvn" "indvars" "inline" "instcombine" "aggressive-instcombine" "ipsccp"  
"jump-threading" "lcssa" "licm" "loop-deletion" "loop-extract" "loop-reduce" "loop-rotate"  
"loop-simplify" "loop-unroll" "loweratomic" "lowerinvoke" "memcpyopt" "mergefunc"  
"mergereturn" "partial-inliner" "reassociate" "tailcallelim" "strip-dead-prototypes" "strip"  
"simple-loop-unswitch" "sink" "simplifycfg" "mem2reg" "memcpyopt" "sccp" "sroa" "reg2mem"
"scalar-evolution"
)


function run_test {
    binsec -sse -sse-script checkct_cmp_bytes.cfg -sse-depth 100000000 -checkct "${OUTPUT}"
    return $?
}

# --- Step 1: Build Baseline LLVM IR with -O0 ---
echo "Compiling baseline IR (-O0) version..."


clang -m32 -march=i386 -DKRML_NOUINT128 -static -O0 -S -emit-llvm "${SOURCE}" -o "${BASELINE_LL}" 

# --- Step 2: Compile Baseline IR to Binary and Test ---
echo "Compiling baseline IR to binary..."
clang -m32 -march=i386 -DKRML_NOUINT128 -static -O0 "${BASELINE_LL}" -o "${OUTPUT}" -L../../__libsym__/ -lsym "${EXTRA_SOURCE}"
echo "Running baseline test..."
if ! run_test; then
    echo "Baseline test failed! Vulnerability appears even with -O0."
    exit 1
fi
echo "Baseline test passed. (No vulnerability at -O0)"

# --- Iteratively Apply LLVM Passes ---
accumulated_flags=""

for pass in "${PASSES[@]}"; do
    echo "----------------------------------------"
    echo "Adding optimization pass: $pass"

    accumulated_flags+=" -$pass"
    
    rm -f "${OPT_LL}" "${OUTPUT}"
    
    echo "Applying accumulated passes to baseline IR..."
    
    
    echo opt -S ${accumulated_flags} "${BASELINE_LL}" -o "${OPT_LL}"
    
    echo "Compiling optimized IR to binary..."
    clang -m32 -march=i386 -DKRML_NOUINT128 -static -O0 "${OPT_LL}" -o "${OUTPUT}" -L../../__libsym__/ -lsym
    
    echo "Running test after adding pass: $pass"
    if ! run_test; then
        echo "========================================"
        echo "Test FAILED after adding pass: $pass"
        echo "The vulnerability appears to be introduced at this stage."
        exit 1
    else
        echo "Test passed after adding pass: $pass"
    fi
done

echo "----------------------------------------"
echo "All passes added. No vulnerability was detected with the incremental flags."
