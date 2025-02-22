#!/bin/bash

# Define file paths
SRC_FILE=$1  # Source file provided as an argument
CLANG_OPTS=("O0" "O1" "O2" "O3")  # Clang optimization levels
BINSEC_OUTPUT="binsec_results.txt"

# Function to check for CT vulnerabilities using binsec
check_ct_vuln() {
    binsec --tool ct $1 > "$BINSEC_OUTPUT" 2>&1
    grep -q "vulnerability found" "$BINSEC_OUTPUT"
    return $?  # 0 if found, 1 if not
}

# Step 1: Run Clang optimizations and check for vulnerabilities
echo "Running Clang optimizations..."
for opt in "${CLANG_OPTS[@]}"; do
    OUT_FILE="output_${opt}.bin"
    clang -$opt -o "$OUT_FILE" "$SRC_FILE"

    echo "Checking for CT vulnerabilities in $OUT_FILE..."
    if check_ct_vuln "$OUT_FILE"; then
        echo "CT vulnerability found at Clang -$opt"
        VULN_OPT_LEVEL=$opt
        break
    fi
done

# If no vulnerabilities were found in Clang optimization, exit
if [ -z "$VULN_OPT_LEVEL" ]; then
    echo "No CT vulnerabilities found at any Clang optimization level."
    exit 0
fi

# Step 2: Check if the issue is due to Clang frontend optimizations
echo "Running Clang frontend optimizations..."
./clang_frontend_opt_script.sh "$SRC_FILE"
if check_ct_vuln "frontend_opt_output.bin"; then
    echo "CT vulnerability persists after frontend optimizations."
else
    echo "No CT vulnerability after frontend optimizations. Clang frontend optimizations were the cause."
    exit 0
fi

# Step 3: Run LLVM IR optimizations if frontend optimizations did not remove the vulnerability
echo "Running LLVM IR optimizations..."
./llvm_ir_opt_script.sh "$SRC_FILE"
if check_ct_vuln "llvm_opt_output.bin"; then
    echo "CT vulnerability persists even after LLVM optimizations."
else
    echo "No CT vulnerability after LLVM optimizations."
fi
