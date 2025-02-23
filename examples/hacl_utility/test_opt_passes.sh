#!/bin/bash

# Quellcode-Datei
SOURCE_C="cmp_bytes.c"
LLVM_IR="cmp_bytes.ll"
OPTIMIZED_LL="cmp_bytes.ll"

# Clang-Befehl ausführen
clang-14 -O0 -Xclang -disable-O0-optnone -m32 -march=i386 -DKRML_NOUINT128 -static -S -emit-llvm "$SOURCE_C" -o "$LLVM_IR"
echo "LLVM IR generiert: $LLVM_IR"

# Opt-Befehl ausführen und die Ausgabe speichern
OPT_OUTPUT=$(opt-14 -S -O1 -debug-pass=Arguments -enable-new-pm=0 "$LLVM_IR" -o "$OPTIMIZED_LL" 2>&1)
echo "$OPT_OUTPUT" > opt_output.txt
echo "Erster Opt-Durchlauf abgeschlossen: $OPTIMIZED_LL"

# Extrahiere die Passes aus den 'Pass Arguments:' Zeilen
ALL_OPT_PASSES=($(echo "$OPT_OUTPUT" | grep "Pass Arguments:" | sed -E 's/Pass Arguments:  //g' | tr -s ' ' | tr ' ' '\n'))

# Zeige die extrahierten Pässe an
echo "Extrahierte OPT_PASSES:"
echo "("${ALL_OPT_PASSES[@]}" )"

# Blacklist von unerwünschten Passes definieren
BLACKLIST=("-targetpassconfig -write-bitcode -print-module")


# Entferne geblacklistete Pässe aus OPT_PASSES
OPT_PASSES=()
for pass in "${ALL_OPT_PASSES[@]}"; do
    if [[ ! " ${BLACKLIST[@]} " =~ " $pass " ]]; then
        OPT_PASSES+=("$pass")
    fi
done

# Define output log file
LOG_FILE="binsec_results.log"
echo "Binsec Results Log" > "$LOG_FILE"


# Compile the source to LLVM IR
clang-14 -O0 -Xclang -disable-O0-optnone -m32 -march=i386 -DKRML_NOUINT128 -static -S -emit-llvm cmp_bytes.c -o cmp_bytes.ll
clang-14 -O0 -Xclang -disable-O0-optnone -m32 -march=i386 -DKRML_NOUINT128 -static -S -emit-llvm Hacl_Policies.c -o Hacl_Policies..ll

# Apply passes one-by-one
ADDED_PASSES=()  # Empty array to store added passes
for PASS in "${OPT_PASSES[@]}"; do
    ADDED_PASSES+=("$PASS")  # Add the new pass
    echo "Adding pass: $PASS"
   

    # Run opt with the added pass
    opt-14 -S -enable-new-pm=0 "${ADDED_PASSES[@]}" cmp_bytes.ll -o cmp_bytes.ll
    opt-14 -S -enable-new-pm=0 "${ADDED_PASSES[@]}" Hacl_Policies..ll -o Hacl_Policies..ll

    # Compile the optimized IR back to an executable
    clang-14 -O0 -m32 -march=i386 -DKRML_NOUINT128 -static Hacl_Policies..ll cmp_bytes.ll -o cmp_bytes_optnone.out -L../../__libsym__/ -lsym

    # Run binsec and log the result
    BINSEC_OUTPUT=$(binsec -sse -sse-script checkct_cmp_bytes.cfg -sse-depth 100000000 -checkct cmp_bytes_optnone.out 2>&1)

    status=$(echo "$BINSEC_OUTPUT" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

    if [[ -z "$status" ]]; then
        status="unknown"
        #echo "Warning: Status not found for $BASE_NAME" >> debug_log.txt
    elif [[ "$status" == "insecure" ]]; then
        echo "Status is insecure!"
        echo "$PASS, $status" >> "$LOG_FILE"
        echo "-----------------------------------------------------" >> "$LOG_FILE"
        break
    fi
    

    echo "$PASS, $status" >> "$LOG_FILE"
    echo "-----------------------------------------------------" >> "$LOG_FILE"
done

echo "All tests completed. Results saved in $LOG_FILE."
