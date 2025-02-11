#!/bin/bash

# Set the base directory containing the example subdirectories
BASE_DIR="./examples"

# List of valid folders
VALID_FOLDERS=("bearssl" "openssl_almeida" "openssl_utility" "tea" "libsodium" "hacl" "hacl_utility" "ct-sort" "ct-select" "donna" "relse/quickstart"  )

# Function to check if the input folder is valid
is_valid_folder() {
    local folder=$1
    for valid_folder in "${VALID_FOLDERS[@]}"; do
        if [[ $folder == $valid_folder ]]; then
            return 0
        fi
    done
    return 1
}

# Get the user-specified folder from the command line arguments
USER_FOLDER=$1

# Check if the user specified a folder
if [[ -n $USER_FOLDER ]]; then
    # Validate the folder
    if is_valid_folder "$USER_FOLDER"; then
        FOLDERS=("$USER_FOLDER")
    else
        echo "Error: '$USER_FOLDER' is not a valid folder. Valid options are: ${VALID_FOLDERS[*]}"
        exit 1
    fi
else
    # If no folder is specified, run all folders
    FOLDERS=("${VALID_FOLDERS[@]}")
fi

# Iterate through the folders and run the scripts
for folder in "${FOLDERS[@]}"; do
    RUN_SCRIPT="$BASE_DIR/$folder/run_binsec.sh"

    if [[ -f $RUN_SCRIPT && -x $RUN_SCRIPT ]]; then
        echo "Running $RUN_SCRIPT in $folder..."
        (cd "$BASE_DIR/$folder" && ./run_binsec.sh)
    else
        echo "Skipping $folder: run_binsec.sh not found or not executable."
    fi
done

echo "Execution completed."
