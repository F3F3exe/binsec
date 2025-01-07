#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "lib.c"

void high_input_1(bool *bit) {
    if (bit) {
        uint32_t private_data = 0xA5A5A5A5; // Example private data
        *bit = (private_data & (1 << 0)) != 0; // Extract least significant bit
    }
}

void low_input_4(uint32_t *x) {
    if (x) {
        uint32_t data = 0x12345678; // Example data
        *x = (data & 0xFF); // Extract least significant byte
    }
}

int main() {
  bool bit;       // private
uint32_t x, y;  // public

  high_input_1(&bit);
  low_input_4(&x);
  low_input_4(&y);
  
  int res =  ct_select_u32_v1(x, y, bit);
  printf("res: %d\n", res);
  exit(res);
  return res;
}
