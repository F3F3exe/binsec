#!/bin/bash

#lib, no wrapper

targets=(
ct_select_v1 ct_select_v2 ct_select_v3 ct_select_v4 naive_select
)

OPT_LEVEL=$1
OPT_LEVEL_CLANG="O0"
FILE=$2
CLANG=$3
OPT="opt"


if [[ -z "$OPT_LEVEL" || -z "$FILE" || -z "$CLANG" ]]; then
    echo "Usage: $0 <OPT_LEVEL> <FILE> <CLANG>"
    exit 1
fi

if [[ ! "$OPT_LEVEL" =~ ^O[0-3]$ ]]; then
    echo "Error: OPT_LEVEL must be one of O0, O1, O2, or O3."
    exit 1
fi
case "$OPT_LEVEL" in
    O0) OPT_LEVEL_CLANG="O0"  ;; 
    O1)  OPT_LEVEL_CLANG="O0" ;;
    O2)  OPT_LEVEL_CLANG="O1" ;;
    O3)  OPT_LEVEL_CLANG="O2" ;;
esac

echo $OPT_LEVEL $OPT_LEVEL_CLANG

if [[ ! "$CLANG" =~ ^(clang-7.1|clang-14|clang-12|clang-19)$ ]]; then
    echo "Error: CLANG must be one of clang-7.1, clang-14, clang-12, or clang-19."
    exit 1
fi

CLANG_v=$CLANG
NEW_PM=""

case "$CLANG" in
    clang-7.1) OPT="opt-7" 
               CLANG="$HOME/clang-7.1/bin/clang" ;; 
    clang-14)  OPT="opt-14" 
               NEW_PM="-enable-new-pm=0" ;;
    clang-12)  OPT="opt-12" 
               NEW_PM="-enable-new-pm=0" ;;
    clang-19)  OPT="opt-19" ;;
esac

echo $CLANG $OPT



if [[ $# -eq 3 ]]; then
  specific_target=$2
  if [[ ! " ${targets[@]} " =~ " ${specific_target} " ]]; then
    echo "Error: Target '$specific_target' is not in the predefined list."
    exit 1
  fi
  targets=($specific_target)
fi

echo "Compiling with $CLANG using optimization level $OPT_LEVEL for target(s): ${targets[@]}"

depth=100000000
timeout=20
#configuration
SOURCE_FILE="$specific_target.c"  
BASE_NAME=$specific_target
LLVM_IR="$specific_target.ll"
OPTIMIZED_LL="$specific_target.ll"
SNAPSHOT_SCRIPT="make_coredump.sh"
BINSEC_SCRIPT="binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth $depth -checkct -sse-timeout $timeout"
CFLAGS=" -m32 -march=i386 -DKRML_NOUINT128 -static -Wall "
LIBSYM="-L../../__libsym__/ -lsym"
LIBS="lib"

$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm "$SOURCE_FILE" -o "$LLVM_IR"

# get llvm opt passes
OPT_OUTPUT=$($OPT -S -$OPT_LEVEL -debug-pass=Arguments $NEW_PM "$LLVM_IR" -o "$OPTIMIZED_LL" 2>&1)
echo "$OPT_OUTPUT" > opt_output.txt

ALL_OPT_PASSES=($(echo "$OPT_OUTPUT" | grep "Pass Arguments:" | sed -E 's/Pass Arguments:  //g' | tr -s ' ' | tr ' ' '\n'))

echo "Extrahierte OPT_PASSES:"
echo "("${ALL_OPT_PASSES[@]}" )"

# Blacklist passes
BLACKLIST=("-targetpassconfig" "-write-bitcode" "-print-module")

OPT_PASSES=()
for pass in "${ALL_OPT_PASSES[@]}"; do
    if [[ ! " ${BLACKLIST[@]} " =~ " $pass " ]]; then
        OPT_PASSES+=("$pass")
    fi
done

mkdir -p Results
mkdir -p Results
mkdir -p Results/llvm_opt_passes
LOG_FILE="Results/llvm_opt_passes/results_${BASE_NAME}_${OPT_LEVEL}__${CLANG_v}_$(date +%Y%m%d_%H%M%S).txt"
echo "Binsec Results Log" > "$LOG_FILE"

# Compile the source to LLVM IR
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm "$SOURCE_FILE" -o "$LLVM_IR"
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm "$LIBS.c" -o "$LIBS.ll"

# Apply passes one-by-one
ADDED_PASSES=() 
for PASS in "${OPT_PASSES[@]}"; do
    ADDED_PASSES+=("$PASS") 
    echo "Adding pass: $PASS"
   
    $OPT $NEW_PM -S "${ADDED_PASSES[@]}" "$LLVM_IR" -o "$OPTIMIZED_LL"
    $OPT $NEW_PM -S "${ADDED_PASSES[@]}" "$LIBS.ll" -o "$LIBS.ll"

    $CLANG -$OPT_LEVEL_CLANG $CFLAGS $LIBS.ll $OPTIMIZED_LL -o ${BASE_NAME}.out -L../../__libsym__/ -lsym

    # Run binsec and log the result
    BINSEC_OUTPUT=$(binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth $depth  -checkct ${BASE_NAME}.out -sse-timeout $timeout 2>&1)



    status=$(echo "$BINSEC_OUTPUT" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

    if [[ -z "$status" ]]; then
        status="unknown"
        
    elif [[ "$status" == "insecure" ]]; then
        #echo "Status is insecure!"
        echo "$PASS, $status" >> "$LOG_FILE"
        echo "-----------------------------------------------------" >> "$LOG_FILE"
        #break
    fi
    

    echo "$PASS, $status" >> "$LOG_FILE"
    echo "-----------------------------------------------------" >> "$LOG_FILE"
done

echo "All tests completed. Results saved in $LOG_FILE."
