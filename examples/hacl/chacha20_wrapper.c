#include <stdlib.h>
#include "hacl-c/hacl-c/Hacl_Chacha20.h"
#include <stdint.h>

#define MESSAGE_LEN 256
#define KEY_LEN 32
#define NONCE_LEN 12

uint8_t output[MESSAGE_LEN]; // private
  uint8_t plain[MESSAGE_LEN];  // private
  uint32_t len = MESSAGE_LEN;  // public
  uint8_t k[KEY_LEN];          // private
  uint8_t nonce[NONCE_LEN];
  uint32_t ctr;
int main() {
  

  // HIGH_INPUT(MESSAGE_LEN)(output);
  // HIGH_INPUT(MESSAGE_LEN)(plain);
  // HIGH_INPUT(KEY_LEN)(k);
  
  Hacl_Chacha20_chacha20(output, plain, len, k, nonce, ctr);
  exit(1);
  return 0;
}
