#!/bin/bash

#lib, wrapper, from core

targets=(
chacha20 curve25519 sha256 sha512 cmp_bytes
)

OPT_LEVEL=$1
OPT_LEVEL_CLANG="O0"
FILE=$2
CLANG=$3
OPT="opt"


if [[ -z "$OPT_LEVEL" || -z "$FILE" || -z "$CLANG" ]]; then
    echo "Usage: $0 <OPT_LEVEL> <FILE> <CLANG>"
    exit 1
fi

if [[ ! "$OPT_LEVEL" =~ ^O[0-3]$ ]]; then
    echo "Error: OPT_LEVEL must be one of O0, O1, O2, or O3."
    exit 1
fi
case "$OPT_LEVEL" in
    O0) OPT_LEVEL_CLANG="O0"  ;; 
    O1)  OPT_LEVEL_CLANG="O0" ;;
    O2)  OPT_LEVEL_CLANG="O0" ;;
    O3)  OPT_LEVEL_CLANG="O0" ;;
esac

echo $OPT_LEVEL $OPT_LEVEL_CLANG

if [[ ! "$CLANG" =~ ^(clang-7.1|clang-14|clang-12|clang-19)$ ]]; then
    echo "Error: CLANG must be one of clang-7.1, clang-14, clang-12, or clang-19."
    exit 1
fi

CLANG_v=$CLANG
NEW_PM=""

case "$CLANG" in
    clang-7.1) OPT="opt-7" 
               CLANG="$HOME/clang-7.1/bin/clang" ;; 
    clang-14)  OPT="opt-14" 
               NEW_PM="-enable-new-pm=0" ;;
    clang-12)  OPT="opt-12" 
               NEW_PM="-enable-new-pm=0" ;;
    clang-19)  OPT="opt-19" ;;
esac

echo $CLANG $OPT



if [[ $# -eq 3 ]]; then
  specific_target=$2
  if [[ ! " ${targets[@]} " =~ " ${specific_target} " ]]; then
    echo "Error: Target '$specific_target' is not in the predefined list."
    exit 1
  fi
  targets=($specific_target)
fi

echo "Compiling with $CLANG using optimization level $OPT_LEVEL for target(s): ${targets[@]}"

depth=100000000
timeout=50
#configuration
SOURCE_FILE=${specific_target}_wrapper.c
BASE_NAME=$specific_target
LLVM_IR="$specific_target.ll"
OPTIMIZED_LL="$specific_target.ll"
SNAPSHOT_SCRIPT="make_coredump.sh"
BINSEC_SCRIPT="binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth $depth -checkct -sse-timeout $timeout"
CFLAGS=" -m32 -march=i386 -DKRML_NOUINT128 -static -Wall "
LIBSYM="-L../../__libsym__/ -lsym -I./inc -L./. -lbearssl"
LIBHACL="-I./hacl-c/hacl-c/ -L./hacl-c/hacl-c/ -lhacl32"
LIBS="hacl_c"

$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm "$SOURCE_FILE" -o "$LLVM_IR"

# get llvm opt passes
OPT_OUTPUT=$($OPT -S -$OPT_LEVEL -debug-pass=Arguments $NEW_PM "$LLVM_IR" -o "$OPTIMIZED_LL" 2>&1)
echo "$OPT_OUTPUT" > opt_output.txt

ALL_OPT_PASSES=($(echo "$OPT_OUTPUT" | grep "Pass Arguments:" | sed -E 's/Pass Arguments:  //g' | tr -s ' ' | tr ' ' '\n'))

echo "Extrahierte OPT_PASSES:"
echo "("${ALL_OPT_PASSES[@]}" )"

# Blacklist passes
BLACKLIST=("-targetpassconfig" "-write-bitcode" "-print-module")

OPT_PASSES=()
for pass in "${ALL_OPT_PASSES[@]}"; do
    if [[ ! " ${BLACKLIST[@]} " =~ " $pass " ]]; then
        OPT_PASSES+=("$pass")
    fi
done

mkdir -p Results
mkdir -p Results/llvm_opt_passes
LOG_FILE="Results/llvm_opt_passes/results_${BASE_NAME}_${OPT_LEVEL}_$(date +%Y%m%d_%H%M%S).txt"
echo "Binsec Results Log" > "$LOG_FILE"


# Compile the source to LLVM IR
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm "$SOURCE_FILE" -o "$LLVM_IR"
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/AEAD_Poly1305_64.c -o hacl-c/hacl-c/AEAD_Poly1305_64.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/FStar.c -o hacl-c/hacl-c/FStar.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Chacha20.c -o hacl-c/hacl-c/Hacl_Chacha20.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Chacha20Poly1305.c -o hacl-c/hacl-c/Hacl_Chacha20Poly1305.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Chacha20_Vec128.c -o hacl-c/hacl-c/Hacl_Chacha20_Vec128.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Curve25519.c -o hacl-c/hacl-c/Hacl_Curve25519.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Ed25519.c -o hacl-c/hacl-c/Hacl_Ed25519.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_HMAC_SHA2_256.c -o hacl-c/hacl-c/Hacl_HMAC_SHA2_256.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Policies.c -o hacl-c/hacl-c/Hacl_Policies.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Poly1305_32.c -o hacl-c/hacl-c/Hacl_Poly1305_32.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Poly1305_64.c -o hacl-c/hacl-c/Hacl_Poly1305_64.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_SHA2_256.c -o hacl-c/hacl-c/Hacl_SHA2_256.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_SHA2_384.c -o hacl-c/hacl-c/Hacl_SHA2_384.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_SHA2_512.c -o hacl-c/hacl-c/Hacl_SHA2_512.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Salsa20.c -o hacl-c/hacl-c/Hacl_Salsa20.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/Hacl_Unverified_Random.c -o hacl-c/hacl-c/Hacl_Unverified_Random.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/NaCl.c -o hacl-c/hacl-c/NaCl.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/haclnacl.c -o hacl-c/hacl-c/haclnacl.ll
$CLANG -$OPT_LEVEL_CLANG -Xclang -disable-O0-optnone $CFLAGS -S -emit-llvm hacl-c/hacl-c/kremlib.c -o hacl-c/hacl-c/kremlib.ll

llvm-link -S hacl-c/hacl-c/*.ll -o ${LIBS}.ll

# Apply passes one-by-one
ADDED_PASSES=() 
for PASS in "${OPT_PASSES[@]}"; do
    ADDED_PASSES+=("$PASS") 
    echo "Adding pass: $PASS"
   
    $OPT $NEW_PM -S "${ADDED_PASSES[@]}" "$LLVM_IR" -o "$OPTIMIZED_LL"
    $OPT $NEW_PM -S "${ADDED_PASSES[@]}" "$LIBS.ll" -o "${LIBS}_opt.ll"

    $CLANG -$OPT_LEVEL_CLANG $CFLAGS ${LIBS}_opt.ll $OPTIMIZED_LL -o ${BASE_NAME}.out $LIBSYM $LIBHACL


    config_file="checkct_${BASE_NAME}.cfg"
    BINSEC_OUTPUT=""

    if grep -q "^starting from core" "$config_file"; then
        core_dump="core_${BASE_NAME}.snapshot"
        make_coredump.sh core_${BASE_NAME}.snapshot ${BASE_NAME}.out

        BINSEC_OUTPUT=$(binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth $depth  -checkct core_${BASE_NAME}.snapshot -sse-timeout $timeout 2>&1)
    else
        BINSEC_OUTPUT=$(binsec -sse -sse-script checkct_$BASE_NAME.cfg -sse-depth $depth  -checkct ${BASE_NAME}.out -sse-timeout $timeout 2>&1)


    fi

    status=$(echo "$BINSEC_OUTPUT" | grep -oP '(?<=\[checkct:result\] Program status is : )\w+')

    if [[ -z "$status" ]]; then
        status="unknown"
        #echo "Warning: Status not found for $BASE_NAME" >> debug_log.txt
    elif [[ "$status" == "insecure" ]]; then
        echo "Status is insecure!"
        echo "$PASS, $status" >> "$LOG_FILE"
        echo "-----------------------------------------------------" >> "$LOG_FILE"
        #break
    fi
    

    echo "$PASS, $status" >> "$LOG_FILE"
    echo "-----------------------------------------------------" >> "$LOG_FILE"
done

echo "All tests completed. Results saved in $LOG_FILE."
