#!/bin/bash

for c_file in *.c; do

  base_name="${c_file%.c}"

  clang -g -c -emit-llvm "$c_file" -o "${base_name}.bc"
  clang -g -S -emit-llvm "$c_file" -o "${base_name}.ll"

#  clang "$c_file" -o "${base_name}.out"

  #the inline is for function with function calls -> otherwise we dont have full path exploration
  opt -always-inline -inline-threshold=1000 -O3 "${base_name}.bc" -o "${base_name}.bc"

done