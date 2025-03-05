#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O0 O1 O2 O3)

# List of targets
targets=(
tea_decrypt tea_encrypt
)

clang_version=(
  clang-19
)

#LOG_FILE="Results/llvm_optimization_results_$(date +%Y%m%d_%H%M%S).txt"


# Iterate over all optimization levels and targets
for TARGET in "${targets[@]}"; do

  #echo "Target: ${TARGET}" >>  ${LOG_FILE}
  

  for CLANG in "${clang_version[@]}"; do
    #echo "Clang version: $CLANG" >> ${LOG_FILE}
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
        #echo "Optimization level: $OPT_LEVEL" >> ${LOG_FILE}
      
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"
          #echo "    Analysing Clang Optimizations:"
          #check if O0, O1, O2, O3 leads to CT vuln 
          RESULTS_FILE1=$(./run_clang.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_optimizations/results_.*\.txt')
          

          #if grep -q "insecure" "$RESULTS_FILE1"; then
          #    echo "  CT vulnerability detected!"
              #echo "  CT vulnerability detected: " >>  ${LOG_FILE}

              #echo "    Analysing Clang Frontend optimizations:"

              RESULTS_FILE2=$(./run_clang_opt.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_frontend_optimizations/results_.*\.txt')
              #if grep -q " secure" "$RESULTS_FILE2"; then
              #  echo "    Clang frontend optimization caused CT violation: "  >>  ${LOG_FILE}
              #  grep " secure" "$RESULTS_FILE3" >> ${LOG_FILE}
              #  echo "    Clang frontend optimization caused CT violation"
              #fi

              #echo "    Analysing LLVM optimization passes:" 

              if [[ "$CLANG" == "clang-19" ]]; then
                RESULTS_FILE4=$(./test_opt19_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/llvm_opt_passes/results_.*\.txt')
              else
                RESULTS_FILE3=$(./test_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/llvm_opt_passes/results_.*\.txt')
              fi

            
          

      done
  done
    #echo "Results in ${LOG_FILE}"

done

echo "All optimization levels and targets tested!"
