#!/bin/bash

# Output file for the results table
output_file="binsec_results_optimizations.txt"

# List of targets as specified in the Makefile (no optimization level suffix)
targets=(
sort sort_multiplex sort_negative
)

# Optimization levels
optimizations=("O0" "O1" "O2" "O3" "Os" "Oz" "Ofast" "flto")

# Depth and config script variables
depth=100000000

# Check if a specific target is provided as an argument
if [[ $# -eq 1 ]]; then
  specific_target=$1
  if [[ ! " ${targets[@]} " =~ " ${specific_target} " ]]; then
    echo "Error: Target '$specific_target' is not in the predefined list."
    exit 1
  fi
  targets=($specific_target)
fi

# Print the table header to the output file
echo -e "Target\t\t\tO0\t\tO1\t\tO2\t\tO3\t\tOs\t\tOz\t\tOfast\t\tflto" > "$output_file"

# Iterate over each target
for target in "${targets[@]}"; do
  echo -n -e "$target" >> "$output_file"  # Print target name to the table

  # Iterate over each optimization level
  for opt in "${optimizations[@]}"; do
    target_with_opt="${target}_${opt}"  # e.g., aes_ct_O0, aes_ct_O1, etc.

    echo "Building target: $target_with_opt"
    make  "$target_with_opt"  # Build the target with the specific optimization level

    if [[ $? -ne 0 ]]; then
      echo -e -n "\tbinsec failed" >> "$output_file"
      continue
    fi

    # Construct the config file path
    config_file="checkct_${target}.cfg"

    # Check if the cfg file contains "starting from core" at the start
    if grep -q "^starting from core" "$config_file"; then
      # If the file starts with "starting from core", run the core-based binsec command
      echo "Running core-based binsec for $target_with_opt..."
      core_dump="core_${target_with_opt}.snapshot"
      make_coredump.sh "$core_dump" "$target_with_opt"
      echo binsec -sse -sse-script "$config_file" -sse-depth "$depth" -checkct "$core_dump"
      binsec_output=$(binsec -sse -sse-script "$config_file" -sse-depth "$depth" -checkct "$core_dump")
    else
      # Otherwise, run the normal binsec command
      stats_file="./${target_with_opt}.csv"
      echo "Running standard binsec for $target_with_opt..."
      echo binsec -sse -checkct-stats-file "$stats_file" -sse-script "$config_file" -sse-depth "$depth" -checkct "$target_with_opt"
      binsec_output=$(binsec -sse -checkct-stats-file "$stats_file" -sse-script "$config_file" -sse-depth "$depth" -checkct "$target_with_opt")
    fi

    # Output the full binsec result to the console
    echo "$binsec_output"

    if [[ $? -ne 0 ]]; then
      echo -e -n "\tbinsec failed" >> "$output_file"
      continue
    fi

    # Parse the binsec output for security status
    status=$(echo "$binsec_output" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

    # If no status found, assume unknown
    if [[ -z "$status" ]]; then
      status="unknown"
    fi

    # Append the result to the output file
    echo -e -n "\t$status" >> "$output_file"
  done

  # New line after each target
  echo "" >> "$output_file"
done

echo "All tasks completed."
echo "Results saved to $output_file."
