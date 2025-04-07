#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O0 O1 O2 O3)

# List of targets
targets=(
donna
)
clang_version=(
  clang-19 clang-12 clang-7.1
)

# Iterate over all optimization levels and targets
for TARGET in "${targets[@]}"; do
  for CLANG in "${clang_version[@]}"; do
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
      
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"
          
          #analyze full clang optimizations
          ./run_clang.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_optimizations/results_.*\.txt'
          
          #analyze clang front-end optimizations
          ./run_clang_opt.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/clang_frontend_optimizations/results_.*\.txt'

          #analyze llvm ir optimizations
          if [[ "$CLANG" == "clang-19" ]]; then
              if [[ "$OPT_LEVEL" != "O0" ]]; then
                ./test_opt19_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/llvm_opt_passes/results_.*\.txt'
              fi
          else
              ./test_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG" | grep -oP 'Results/llvm_opt_passes/results_.*\.txt'
          fi
      done
  done
    #echo "Results in ${LOG_FILE}"
done

echo "All optimization levels and targets tested!"
