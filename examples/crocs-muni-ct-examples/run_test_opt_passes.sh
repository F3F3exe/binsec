#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O0 O1 O2 O3)

# List of targets
targets=(
  02 04 08 09
)
clang_version=(
  clang-14 clang-19
)



# Iterate over all optimization levels and targets
for TARGET in "${targets[@]}"; do

  LOG_FILE="Results/llvm_optimization_results_${target}_$(date +%Y%m%d_%H%M%S)" #.txt"
  echo "${target}" >  ${LOG_FILE}.txt
  

  for CLANG in "${clang_version[@]}"; do
    echo "Clang version: $CLANG" > ${LOG_FILE}.txt
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
      
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"

          #check if O0, O1, O2, O3 leads to CT vuln
          RESULTS_FILE=$(./run_clang.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')

          if grep -q "insecure" "$RESULTS_FILE"; then
              echo "  CT vulnerability detected!" >  ${LOG_FILE}.txt

              echo "    Analysing Clang frontend optimizations:" >  ${LOG_FILE}.txt

              RESULTS_FILE=$(./run_clang_opt.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')
              if grep -q " secure" "$RESULTS_FILE"; then
                echo "    Clang frontend optimization caused CT violation!"
              fi

              echo "    Analysing LLVM optimization passes:" >  ${LOG_FILE}.txt

              echo "    LLVM optimization passes cause CT violation!"
              RESULTS_FILE=$(./test_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')
              if grep -q "insecure" "$RESULTS_FILE"; then
                echo "      LLVM pass caused CT violation!"
              fi
            
          else
              echo "  No CT vulnerability found." >  ${LOG_FILE}.txt
          fi

      done
  done
done

echo "All optimization levels and targets tested!"
