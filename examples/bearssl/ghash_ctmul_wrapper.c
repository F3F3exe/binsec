#include "inc/bearssl.h"
#include <stdint.h>
#include "../../__libsym__/sym.h"

#define KEY_LEN 16 /* The GHASH key length in bytes */
#define DATA_LEN 64 /* Must be a multiple of block size */

int main(){  
  uint8_t y[KEY_LEN];  /* The array to update */
  uint8_t h[KEY_LEN];  /* The GHASH key */
  uint8_t data[DATA_LEN];
  size_t len;

  len = (size_t) DATA_LEN;

  HIGH_INPUT(KEY_LEN)(h);    /* High-sensitivity input for GHASH key */
  HIGH_INPUT(DATA_LEN)(data); /* High-sensitivity input for data */
  LOW_INPUT(KEY_LEN)(y);      /* Low-sensitivity input for initial array */

  br_ghash_ctmul(y, h, data, len);
  return 0;
}
