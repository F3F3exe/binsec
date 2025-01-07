#include <stdlib.h>
#include "hacl-c/hacl-c/Hacl_SHA2_512.h"
#include <stdint.h>

#define MESSAGE_LEN 256
#define Hacl_SHA2_512_size_hash 64

uint8_t input[MESSAGE_LEN];             // private
  uint8_t hash1[Hacl_SHA2_512_size_hash]; // private
  uint32_t len = MESSAGE_LEN;             // public
int main() {
  

  // HIGH_INPUT(MESSAGE_LEN)(input);
  // HIGH_INPUT(Hacl_SHA2_512_size_hash)(input);
 
  Hacl_SHA2_512_hash(hash1, input, len);
  exit(hash1[0]);
  return 0;
}
