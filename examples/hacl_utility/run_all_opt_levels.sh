#!/bin/bash

# List of optimization levels
OPT_LEVELS=(O1 O2 O2 O3)

# List of targets
targets=(
cmp_bytes rotate32_left rotate32_right uint8_eq_mask uint8_gte_mask 
uint16_eq_mask uint16_gte_mask uint32_eq_mask uint32_gte_mask 
uint64_eq_mask uint64_gte_mask
)

# Iterate over all optimization levels and targets
for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
    for TARGET in "${targets[@]}"; do
        echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET"
        ./run_opt_passes.sh "$OPT_LEVEL" "$TARGET"
    done
done

echo "All optimization levels and targets tested!"
