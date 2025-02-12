#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O1 O2 O2 O3)

# List of targets
targets=(
  01 02 03 04 05 07 08 09 10 
)

# Iterate over all optimization levels and targets
for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
    for TARGET in "${targets[@]}"; do
        echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET"
        ./run_opt_passes.sh "$OPT_LEVEL" "$TARGET"
    done
done

echo "All optimization levels and targets tested!"
