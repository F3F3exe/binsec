#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O1 O2 O3)

# List of targets
targets=(
  02 03 04 05 07 08 10 
)
clang_version=(
  clang-7.1 clang-19
)

# Iterate over all optimization levels and targets
for CLANG in "${clang_version[@]}"; do
  for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
      for TARGET in "${targets[@]}"; do
          echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG=$CLANG"
          time ./run_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG"
      done
  done
done

echo "All optimization levels and targets tested!"
