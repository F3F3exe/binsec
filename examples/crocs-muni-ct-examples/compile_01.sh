#!/bin/bash

for c_file in *.c; do

  base_name="${c_file%.c}"

  clang -march=native -fomit-frame-pointer -fwrapv -Qunused-arguments -fPIC -fPIE -O3 -g -c -emit-llvm "$c_file" -o "${base_name}.bc"
  clang -march=native -fomit-frame-pointer -fwrapv -Qunused-arguments -fPIC -fPIE -O3 -g -S -emit-llvm "$c_file" -o "${base_name}.ll"

  clang -march=native -fomit-frame-pointer -fwrapv -Qunused-arguments -fPIC -fPIE -O3 "$c_file" -o "${base_name}.out"


done