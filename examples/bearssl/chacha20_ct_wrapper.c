#include "inc/bearssl.h"
#include <stdint.h>
#include "../../__libsym__/sym.h"

#define DATA_LEN 256   /* Must be a multiple of block size */
#define KEY_LEN 32
#define IV_LEN 12

int main(){  
  uint8_t data[DATA_LEN];
  uint8_t key[32];
  uint8_t iv[IV_LEN];
  uint32_t len = DATA_LEN;
  uint32_t cc; 

  HIGH_INPUT(KEY_LEN)(key);
  HIGH_INPUT(DATA_LEN)(data);


  br_chacha20_ct_run(key, iv, cc, data, (size_t) DATA_LEN);
  return 0;
}
