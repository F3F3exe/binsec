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
CFLAGS="-m32 -march=i386 -static"
LIBS="-L../../__libsym__/ -lsym"

# List of LLVM optimization passe
OPTIMIZATIONS=(
  "scev-aa" "adce" "always-inline" "argpromotion" "break-crit-edges"  
  "codegenprepare" "constmerge" "dce" "deadargelim" "dse" "function-attrs" "globaldce"  
  "globalopt" "gvn" "indvars" "inline" "instcombine" "aggressive-instcombine" "ipsccp"  
  "jump-threading" "lcssa" "licm" "loop-deletion" "loop-extract" "loop-reduce" "loop-rotate"  
  "loop-simplify" "loop-unroll" "loweratomic" "lowerinvoke" "memcpyopt" "mergefunc"  
  "mergereturn" "partial-inliner" "reassociate" "tailcallelim" "strip-dead-prototypes" "strip"  
  "simple-loop-unswitch" "sink" "simplifycfg" "mem2reg" "memcpyopt" "sccp" "sroa" "reg2mem"
  "scalar-evolution"
)

# Ensure source file exists
if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: Source file $SOURCE_FILE not found!"
    exit 1
fi

# Compile to LLVM IR (-O0 to disable optimizations)
#echo clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll
clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll

for OPT in "${OPTIMIZATIONS[@]}"; do
  echo "Checking optimizations: $OPT"
  echo opt -S -$OPT $BASE_NAME.ll -o ${BASE_NAME}.ll
  opt -S -$OPT $BASE_NAME.ll -o ${BASE_NAME}.ll
done

clang $CFLAGS -$OPT_LEVEL -S -emit-llvm $SOURCE_FILE -o $BASE_NAME.ll


# Create a results file to track the status
# Ensure the Results directory exists
mkdir -p Results
RESULTS_FILE="Results/optimization_results_$(basename $FILE .c)_${OPT_LEVEL}_${CLANG}.txt"
echo "Optimization,Result" > $RESULTS_FILE

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

# Test each optimization combination
while read -r OPT_COMBO; do
    echo "Testing optimizations: $OPT_COMBO"
    
    # Apply optimization using opt
    opt -S $OPT_COMBO $BASE_NAME.ll -o ${BASE_NAME}.ll

    
    # Recompile the optimized IR
    clang -$OPT_LEVEL $CFLAGS ${BASE_NAME}.ll -o ${BASE_NAME} $LIBS


    # Construct the config file path
    config_file="checkct_${BASE_NAME}.cfg"

    # Check if the cfg file contains "starting from core" at the start
    if grep -q "^starting from core" "$config_file"; then
      # If the file starts with "starting from core", run the core-based binsec command
      #echo "Running core-based binsec for $BASE_NAME..."
      core_dump="core_${BASE_NAME}.snapshot"
      make_coredump.sh "$core_dump" "$BASE_NAME"
      binsec_output=$(binsec -sse -sse-script "$config_file" -sse-depth 1000000 -checkct "$core_dump" -sse-timeout 10)
    else
      # Otherwise, run the normal binsec command
      stats_file="./${target_with_opt}.csv"
      #echo "Running standard binsec for $target_with_opt..."
      #$BINSEC_SCRIPT ${BASE_NAME}
      binsec_output=$($BINSEC_SCRIPT ${BASE_NAME})
    fi
    
    # Run binsec
    #echo "$binsec_output"
    
    if [[ $? -ne 0 ]]; then
        echo -e "$OPT_COMBO, binsec failed" >> "$RESULTS_FILE"
        continue
    fi

    # Parse the binsec output for security status
    status=$(echo "$binsec_output" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

    # If no status found, assume unknown
    if [[ -z "$status" ]]; then
        status="unknown"
    fi

    # Append the result to the output file
    echo "$OPT_COMBO, $status" >> "$RESULTS_FILE"
    
    #echo "Finished testing $OPT_COMBO."
    #echo "-------------------------------------"
done < <(generate_combinations "${OPTIMIZATIONS[@]}")

echo "All optimization combinations tested!"
echo "Results saved in $RESULTS_FILE"
