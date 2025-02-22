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

RESULTS_FILE="Results/optimization_results_${target}_$(date +%Y%m%d_%H%M%S)" #.txt"
echo "${target}" >  ${RESULTS_FILE}.txt
echo "Optimization,Result" > ${RESULTS_FILE}.txt

# Iterate over all optimization levels and targets
for TARGET in "${targets[@]}"; do
  for CLANG in "${clang_version[@]}"; do
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
      
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"

          #check if O0, O1, O2, O3 leads to CT vuln
          RESULTS_FILE=$(./run_clang.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')

          if grep -q "insecure" "$RESULTS_FILE"; then
              echo "  CT vulnerability detected!"
              RESULTS_FILE=$(./run_clang_opt.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')
              if grep -q " secure" "$RESULTS_FILE"; then
                echo "    Clang frontend optimization caused CT violation!"
              else
                echo "    LLVM optimization passes cause CT violation!"
                RESULTS_FILE=$(./run_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/optimization_results_.*\.txt')
                if grep -q "insecure" "$RESULTS_FILE"; then
                  echo "      LLVM pass caused CT violation!"
                else
                  echo "      Could not determine LLVM pass causing CT violation :("
                fi
              fi
          else
              echo "  No CT vulnerability found."
          fi


          #echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"
          #time ./run_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG"
      done
  done
done

echo "All optimization levels and targets tested!"
