#!/bin/bash

OPT_LEVEL=$1
FILE=$2
CLANG=$3

if [[ -z "$OPT_LEVEL" || -z "$FILE" || -z "$CLANG" ]]; then
    echo "Usage: $0 <OPT_LEVEL> <FILE> <CLANG>"
    exit 1
fi

if [[ ! "$OPT_LEVEL" =~ ^O[0-3]$ ]]; then
    echo "Error: OPT_LEVEL must be one of O0, O1, O2, or O3."
    exit 1
fi

if [[ ! "$CLANG" =~ ^(clang-7.1|clang-14|clang-12|clang-19)$ ]]; then
    echo "Error: CLANG must be one of clang-7.1, clang-14, clang-12, or clang-19."
    exit 1
fi

CLANG_v=$CLANG

case "$CLANG" in
    clang-7.1) CLANG="$HOME/clang-7.1/bin/clang" ;; 
esac

targets=(
chacha20 curve25519 sha256 sha512 cmp_bytes
)

if [[ $# -eq 3 ]]; then
  specific_target=$2
  if [[ ! " ${targets[@]} " =~ " ${specific_target} " ]]; then
    echo "Error: Target '$specific_target' is not in the predefined list."
    exit 1
  fi
  targets=($specific_target)
fi

echo "Compiling with $CLANG using optimization level $OPT_LEVEL for target(s): ${targets[@]}"

# Configuration
SOURCE_FILE=${specific_target}_wrapper.c
BASE_NAME=$specific_target
SNAPSHOT_SCRIPT="make_coredump.sh"
BINSEC_SCRIPT="binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth 100000000 -checkct -sse-timeout 10"
CFLAGS="-m32 -march=i386 -DKRML_NOUINT128 -static -Wall"
LIBSYM="-L../../__libsym__/ -lsym"
LIBHACL="-I./hacl-c/hacl-c/ -L./hacl-c/hacl-c/ -lhacl32"

LIBS="hacl_c"


# Ensure source file exists
if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: Source file $SOURCE_FILE not found!"
    exit 1
fi

# Create a results file to track the status
# Ensure the Results directory exists
mkdir -p Results
RESULTS_FILE="Results/clang_optimization_results_$(basename $FILE .c)_${OPT_LEVEL}_${CLANG_v}_$(date +%Y%m%d_%H%M%S)" #.txt"
echo "Optimization,Result" > ${RESULTS_FILE}.txt


export BASE_NAME
export OPT_LEVEL
export CFLAGS
export LIBSYM
export CLANG

    
echo     $CLANG $CFLAGS -$OPT_LEVEL $SOURCE_FILE -o $BASE_NAME.out $LIBSYM $LIBHACL
$CLANG $CFLAGS -$OPT_LEVEL $SOURCE_FILE -o $BASE_NAME.out $LIBSYM $LIBHACL


config_file="checkct_${BASE_NAME}.cfg"
binsec_output=""

if grep -q "^starting from core" "$config_file"; then
    core_dump="core_${BASE_NAME}.snapshot"
    make_coredump.sh core_${BASE_NAME}.snapshot ${BASE_NAME}.out

    binsec_output=$(binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth 100000000 -checkct core_${BASE_NAME}.snapshot 2>&1)
else
    binsec_output=$(binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth 100000000 -checkct ${BASE_NAME}.out 2>&1)
fi


status=$(echo "$binsec_output" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

if [[ -z "$status" ]]; then
    status="unknown"
    #echo "Warning: Status not found for $BASE_NAME" >> debug_log.txt
fi

echo "$OPT_LEVEL, $status" | tee -a "${RESULTS_FILE}.txt"



echo "All optimization combinations tested!"
echo "Results saved in $RESULTS_FILE.txt"
