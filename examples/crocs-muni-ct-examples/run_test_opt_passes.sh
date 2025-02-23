#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O0 O1)

# List of targets
targets=(
  02 
)
clang_version=(
  clang-12
)

LOG_FILE="Results/llvm_optimization_results_$(date +%Y%m%d_%H%M%S).txt"


# Iterate over all optimization levels and targets
for TARGET in "${targets[@]}"; do

  echo "Target: ${TARGET}" >>  ${LOG_FILE}
  

  for CLANG in "${clang_version[@]}"; do
    echo "Clang version: $CLANG" >> ${LOG_FILE}
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
        echo "Optimization level: $OPT_LEVEL" >> ${LOG_FILE}
      
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"

          #check if O0, O1, O2, O3 leads to CT vuln
          RESULTS_FILE1=$(./run_clang.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_optimization_results_.*\.txt')

          if grep -q "insecure" "$RESULTS_FILE1"; then
              echo "  CT vulnerability detected!"
              echo "  CT vulnerability detected: ${RESULTS_FILE1}" >>  ${LOG_FILE}

              echo "    Analysing Clang frontend optimizations:"

              RESULTS_FILE2=$(./run_clang_opt.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_frontend_optimization_results_.*\.txt')
              if grep -q " secure" "$RESULTS_FILE2"; then
                echo "    Clang frontend optimization caused CT violation:  ${RESULTS_FILE2}"  >>  ${LOG_FILE}
                echo "    Clang frontend optimization caused CT violation:  ${RESULTS_FILE2}"
              fi

              echo "    Analysing LLVM optimization passes:" 

              
              RESULTS_FILE3=$(./test_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/opt_passes_.*\.txt')
              if grep -q "insecure" "$RESULTS_FILE3"; then
                echo "      LLVM pass caused CT violation:  ${RESULTS_FILE2}"  >>  ${LOG_FILE}
                echo "      LLVM pass caused CT violation:  ${RESULTS_FILE2}"
              fi
            
          else
              echo "  No CT vulnerability found." >>  ${LOG_FILE}
          fi

      done
  done
    echo "Results in ${LOG_FILE}"

done

echo "All optimization levels and targets tested!"
