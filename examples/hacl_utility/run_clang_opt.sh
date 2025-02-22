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

if [[ ! "$CLANG" =~ ^(clang-14|clang-12|clang-19)$ ]]; then
    echo "Error: CLANG must be one of clang-14, clang-12, or clang-19."
    exit 1
fi

targets=(
cmp_bytes rotate32_left rotate32_right uint8_eq_mask uint8_gte_mask uint16_eq_mask uint16_gte_mask uint32_eq_mask uint32_gte_mask uint64_eq_mask uint64_gte_mask
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
SOURCE_FILE="$specific_target.c"  # Change this if needed
BASE_NAME=$specific_target
SNAPSHOT_SCRIPT="make_coredump.sh"
BINSEC_SCRIPT="binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth 100000000 -checkct -sse-timeout 10"
CFLAGS="-m32 -march=i386 -DKRML_NOUINT128 -static -Wall"
LIBSYM="-L../../__libsym__/ -lsym"
LIBS="Hacl_Policies.c"

# List of LLVM optimization passe
OPTIMIZATIONS=(
  "funroll-loops" "fstrict-aliasing" "fno-math-errno" "finline-hint-functions" "finline-functions" 
  "fno-unroll-loops" "fno-inline-functions"
  )

#"fvectorize" "fslp-vectorize"


# Ensure source file exists
if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: Source file $SOURCE_FILE not found!"
    exit 1
fi

# Create a results file to track the status
# Ensure the Results directory exists
mkdir -p Results
RESULTS_FILE="Results/optimization_results_$(basename $FILE .c)_${OPT_LEVEL}_${CLANG_v}_$(date +%Y%m%d_%H%M%S)" #.txt"
echo "Optimization,Result" > ${RESULTS_FILE}.txt

# Function to generate power set of optimizations
generate_combinations() {
    local elements=("$@")
    local num_elements=${#elements[@]}
    local num_combinations=$((1 << num_elements))
    
    for ((i = 1; i < num_combinations; i++)); do
        local combination=()
        for ((j = 0; j < num_elements; j++)); do
            if (( (i >> j) & 1 )); then
                combination+=("-${elements[j]}")
            fi
        done
        echo "${combination[*]}"
    done
}

export BASE_NAME
export OPT_LEVEL
export CFLAGS
export LIBSYM
export CLANG

generate_combinations "${OPTIMIZATIONS[@]}" | parallel -j 28 "
    UNIQUE_BASE=${BASE_NAME}_{#}  
    eval $CLANG $CFLAGS -$OPT_LEVEL {} $LIBS $SOURCE_FILE -o \$UNIQUE_BASE.out $LIBSYM &&
    binsec_output=\"\$(binsec -sse -sse-script checkct_\$BASE_NAME.cfg -sse-depth 1000000 -checkct \$UNIQUE_BASE.out -sse-timeout 10)\"

    # Debugging
    #echo \"binsec output for \$UNIQUE_BASE:\" >> debug_log.txt
    #echo \"\$binsec_output\" >> debug_log.txt

    status=\$(echo \"\$binsec_output\" | grep -oP '(?<=\[checkct:result\] Program status is : )\\w+')

    if [[ -z \"\$status\" ]]; then
        status=\"unknown\"
        #echo \"Status not found: \$UNIQUE_BASE\" >> debug_log.txt
    fi

    echo \"{} \$status\" | tee -a \"${RESULTS_FILE}_{#}.txt\"
"

# binsec -sse -sse-script checkct_${BASE_NAME}.cfg -sse-depth 1000000 -checkct ${BASE_NAME}_{#} -sse-timeout 10 | tee -a ${RESULTS_FILE}_{#}.txt

cat ${RESULTS_FILE}_*.txt >> ${RESULTS_FILE}.txt
rm ${RESULTS_FILE}_*.txt


echo "All optimization combinations tested"
echo "Results saved in ${RESULTS_FILE}.txt"
