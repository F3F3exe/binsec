#!/bin/bash

OPT_LEVEL=$1
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

if [[ ! "$CLANG" =~ ^(clang-7.1|clang-14|clang-12|clang-19)$ ]]; then
    echo "Error: CLANG must be one of clang-7.1, clang-14, clang-12, or clang-19."
    exit 1
fi

case "$CLANG" in
    clang-7.1) OPT="opt-7" ;;
    clang-14)  OPT="opt-14" ;;
    clang-12)  OPT="opt-12" ;;
    clang-19)  OPT="opt-19" ;;
esac

echo $CLANG $OPT

targets=(
  01 02 03 04 05 07 08 09 10 
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
CFLAGS="-m32 -static"
LIBS="-L../../__libsym__/ -lsym"

# List of LLVM optimization passe
HIGH_OPTIMIZATIONS=(
  "adce" "argpromotion" "dse"   )
#   "globalopt" "gvn" "inline" "aggressive-instcombine"  
#    "loop-unroll" "mergefunc"  
#    "simple-loop-unswitch" "sink" "sccp" "partial-inliner"
# )

LOW_OPTIMIZATIONS=()
#   "block-placement" "codegenprepare" "dce" "deadargelim" "function-attr" "globaldce"
#   "indvars" "instcombine" "ipsccp" "jump-threading" "licm" "loop-reduce" "loop-rotate" 
#   "loop-simplify" "lower-atomic" "mem2reg" "memcpyopt" "mergereturn" "reg2mem" "sora" 
#   "simplifycfg" "tailcallelim"  
# )

# Ensure source file exists
if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: Source file $SOURCE_FILE not found!"
    exit 1
fi

# Compile to LLVM IR (-O0 to disable optimizations)
echo clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll
clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll

VALID_HIGH_OPTIMIZATIONS=()

for OPTIMIZATION in "${HIGH_OPTIMIZATIONS[@]}"; do
  echo "Checking optimization: $OPTIMIZATION"
  clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll

  ERROR_OUTPUT=""
  if [[ "$OPT" == "opt-19" ]]; then
    ERROR_OUTPUT=$($OPT -S -passes=$OPTIMIZATION $BASE_NAME.ll -o ${BASE_NAME}.ll 2>&1)
  else
    ERROR_OUTPUT=$($OPT -S -$OPTIMIZATION $BASE_NAME.ll -o ${BASE_NAME}.ll 2>&1)
  fi

  if [[ -z "$ERROR_OUTPUT" ]]; then
    echo "got error, adding it" $ERROR_OUTPUT
    VALID_HIGH_OPTIMIZATIONS+=("$OPTIMIZATION")
  else
    echo "error: " $ERROR_OUTPUT
  fi
done

VALID_LOW_OPTIMIZATIONS=()

for OPTIMIZATION in "${LOW_OPTIMIZATIONS[@]}"; do
  echo "Checking optimization: $OPTIMIZATION"
  clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll

  ERROR_OUTPUT=""
  if [[ "$OPT" == "opt-19" ]]; then
    ERROR_OUTPUT=$($OPT -S -passes=$OPTIMIZATION $BASE_NAME.ll -o ${BASE_NAME}.ll 2>&1)
  else
    ERROR_OUTPUT=$($OPT -S -$OPTIMIZATION $BASE_NAME.ll -o ${BASE_NAME}.ll 2>&1)
  fi

  if [[ -z "$ERROR_OUTPUT" ]]; then
    echo "got error, adding it" $ERROR_OUTPUT
    VALID_LOW_OPTIMIZATIONS+=("$OPTIMIZATION")
  else
    echo "error: " $ERROR_OUTPUT
  fi
done

echo "-------------------------------------------------------"
echo "${VALID_HIGH_OPTIMIZATIONS[@]}"
echo "-------------------------------------------------------"
echo "${VALID_LOW_OPTIMIZATIONS[@]}"
echo "-------------------------------------------------------"

# Create a results file to track the status
# Ensure the Results directory exists
mkdir -p Results
RESULTS_FILE="Results/optimization_results_$(basename $FILE .c)_${OPT_LEVEL}_${CLANG}_$(date +%Y%m%d_%H%M%S)" #.txt"
echo "Optimization,Result" > ${RESULTS_FILE}.txt

# Function to generate power set of optimizations
generate_combinations() {
    local elements=("$@")
    local num_elements=${#elements[@]}
    local num_combinations=$((1 << num_elements))
    
    for ((i = 1; i < num_combinations; i++)); do
        local combination=()
        
        if [[ "$OPT" == "opt-19" ]]; then
          for ((j = 0; j < num_elements; j++)); do
            if (( (i >> j) & 1 )); then
                combination+=("${elements[j]}")
            fi
          done
          echo "$(IFS=,; echo "${combination[*]}")"

        else
          for ((j = 0; j < num_elements; j++)); do
            if (( (i >> j) & 1 )); then
                combination+=("${elements[j]}")
            fi
          done
            echo "$(IFS=,; echo "${combination[*]}")"
        fi
    done
}


export BASE_NAME
export OPT_LEVEL
export CFLAGS
export LIBS
export CLANG

# Construct the config file path
config_file="checkct_${BASE_NAME}.cfg"

if grep -q "^starting from core" "$config_file"; then

    generate_combinations "${VALID_HIGH_OPTIMIZATIONS[@]}" | parallel -j 28 "
        UNIQUE_BASE=${BASE_NAME}_{#} 

        $CLANG $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o \$UNIQUE_BASE.ll &&
        eval "$OPT -S {} $UNIQUE_BASE.ll -o $UNIQUE_BASE.ll" &&
        $CLANG -$OPT_LEVEL $CFLAGS \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.out $LIBS &&
        
        core_dump="core_\$UNIQUE_BASE.snapshot"
        make_coredump.sh "$core_dump" \$UNIQUE_BASE.out

        binsec_output=\"\$(binsec -sse -sse-script checkct_\$BASE_NAME.cfg -sse-depth 1000000 -checkct $core_dump -sse-timeout 10)\"

        status=\$(echo \"\$binsec_output\" | grep -oP '(?<=\[checkct:result\] Program status is : )\\w+')

        if [[ -z \"\$status\" ]]; then
            status=\"unknown\"
            #echo \"Warning: Status not found \$UNIQUE_BASE\" >> debug_log.txt
        fi

        echo \"{} \$status\" | tee -a \"${RESULTS_FILE}_{#}.txt\"
    "


else

    generate_combinations "${VALID_HIGH_OPTIMIZATIONS[@]}" | parallel -j 28 "
        UNIQUE_BASE=${BASE_NAME}_{#} 
        echo "-------------" {}
        echo $CLANG $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o \$UNIQUE_BASE.ll &&
        

        $CLANG $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o \$UNIQUE_BASE.ll &&
        echo "HALLO" &&
        IFS=',' read -ra PASSES <<< '{}'
        for PASS in \"\${PASSES[@]}\"; do          
          echo 'Applying pass:' \$PASS
          echo eval ${OPT} -S -passes=\"\$PASS\" \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.ll
          eval ${OPT} -S -passes=\"\$PASS\" \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.ll
        done
        echo "BYEEE"
        echo $CLANG -$OPT_LEVEL $CFLAGS \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.out $LIBS &&

        $CLANG -$OPT_LEVEL $CFLAGS \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.out $LIBS &&
        
        binsec_output=\"\$(binsec -sse -sse-script checkct_\$BASE_NAME.cfg -sse-depth 1000000 -checkct \$UNIQUE_BASE.out -sse-timeout 10)\"
        echo $binsec_output
        status=\$(echo \"\$binsec_output\" | grep -oP '(?<=\[checkct:result\] Program status is : )\\w+')

        if [[ -z \"\$status\" ]]; then
            status=\"unknown\"
            #echo \"Warning: Status not found \$UNIQUE_BASE\" >> debug_log.txt
        fi

        echo \"{} \$status\" | tee -a \"${RESULTS_FILE}_{#}.txt\"
    "

fi


##check moderate risk optimizations
if grep -q "^starting from core" "$config_file"; then
    HIGH_OPTIMIZATIONS_WITH_PREFIX=("${VALID_HIGH_OPTIMIZATIONS[@]/#/-}")

    # Generate combinations of HIGH_OPTIMIZATIONS
    generate_combinations "${HIGH_OPTIMIZATIONS_WITH_PREFIX[@]}" | while read high_combination; do
        for low_opt in "${VALID_LOW_OPTIMIZATIONS[@]}"; do
            echo "$high_combination $low_opt"
        done
    done | parallel -j 28 "
        UNIQUE_BASE=${BASE_NAME}_{#} 
        echo OPT {}

        $CLANG $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o \$UNIQUE_BASE.ll &&
        eval \$OPT -S {} \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.ll &&
        $CLANG -$OPT_LEVEL $CFLAGS \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.out $LIBS &&
        
        core_dump=\"core_\$UNIQUE_BASE.snapshot\"
        make_coredump.sh \"\$core_dump\" \$UNIQUE_BASE.out

        binsec_output=\"\$(binsec -sse -sse-script checkct_\$BASE_NAME.cfg -sse-depth 1000000 -checkct \$core_dump -sse-timeout 10)\"

        status=\$(echo \"\$binsec_output\" | grep -oP '(?<=\[checkct:result\] Program status is : )\\w+')

        if [[ -z \"\$status\" ]]; then
            status=\"unknown\"
        fi

        echo \"{} \$status\" | tee -a \"${RESULTS_FILE}_{#}.txt\"
    "
    
else
    generate_combinations "${HIGH_OPTIMIZATIONS_WITH_PREFIX[@]}" | while read high_combination; do
        for low_opt in "${VALID_LOW_OPTIMIZATIONS[@]}"; do
            echo "$high_combination $low_opt"
        done
    done | parallel -j 28 "
        UNIQUE_BASE=${BASE_NAME}_{#} 

        $CLANG $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o \$UNIQUE_BASE.ll &&
        eval $OPT -S {} \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.ll &&
        $CLANG -$OPT_LEVEL $CFLAGS \$UNIQUE_BASE.ll -o \$UNIQUE_BASE.out $LIBS &&
        
        binsec_output=\"\$(binsec -sse -sse-script checkct_\$BASE_NAME.cfg -sse-depth 1000000 -checkct \$UNIQUE_BASE.out -sse-timeout 10)\"

        status=\$(echo \"\$binsec_output\" | grep -oP '(?<=\[checkct:result\] Program status is : )\\w+')

        if [[ -z \"\$status\" ]]; then
            status=\"unknown\"
            #echo \"Warning: Status not found \$UNIQUE_BASE\" >> debug_log.txt
        fi

        echo \"{} \$status\" | tee -a \"${RESULTS_FILE}_{#}.txt\"
    "
fi



cat ${RESULTS_FILE}_*.txt >> ${RESULTS_FILE}.txt
rm ${RESULTS_FILE}_*.txt
rm *.out
rm *.ll
rm *.snapshot


echo "All optimization combinations tested"
echo "Results saved in ${RESULTS_FILE}.txt"
