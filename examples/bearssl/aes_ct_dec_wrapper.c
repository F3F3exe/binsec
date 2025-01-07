#include "inc/bearssl.h"
#include "inc/inner.h"
#include <stdint.h>
#include <stdlib.h>

#define KEY_LEN 240 /* uint32_t skey[60]; => 60 * 4 */
#define N_ROUND 10
#define DATA_LEN 32   /* Must be a multiple of block size */

uint32_t skey[60];
uint32_t q[32];
unsigned num_rounds;

int main(){  
  num_rounds = 10;
  br_aes_ct_bitslice_decrypt(num_rounds, skey, q);
  exit(1);
  return 0;
}
