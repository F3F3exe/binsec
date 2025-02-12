#!/bin/bash
CLANG_VERSIONS=(clang-14)
# List of optimization levels
OPT_LEVELS=(O1 O2 O2 O3)

# List of targets
targets=(
donna
)

# Iterate over all optimization levels and targets
for CLANG in "${CLANG_VERSIONS[@]}"; do
    for OPT_LEVEL in "${OPT_LEVELS[@]}"; do
        for TARGET in "${targets[@]}"; do
            echo "Running run_opt_passes.sh with OPT_LEVEL=$OPT_LEVEL and TARGET=$TARGET and CLANG_VERSION=$CLANG"
            ./run_opt_passes.sh "$OPT_LEVEL" "$TARGET" "$CLANG"
        done
    done
done

echo "All optimization levels and targets tested!"
