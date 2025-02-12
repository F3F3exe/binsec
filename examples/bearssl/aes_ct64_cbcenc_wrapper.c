#include "inc/bearssl.h"
#include <stdint.h>
#include <stdlib.h>
#include "../../__libsym__/sym.h"


#define KEY_LEN 240 /* uint32_t skey[30]; => 30 * 8 */
#define N_ROUND 2
#define IV_LEN br_aes_big_BLOCK_SIZE /* 16 bytes */
#define DATA_LEN 64   /* Must be a multiple of block size */

uint8_t data[DATA_LEN];
uint64_t skey[30];
uint8_t iv[IV_LEN];

int main(){  
  br_aes_ct64_cbcenc_keys ctx;
  ctx.vtable = &br_aes_ct_cbcenc_vtable;
  ctx.num_rounds = N_ROUND;

  HIGH_INPUT(KEY_LEN)(ctx.skey);
  HIGH_INPUT(DATA_LEN)(data);

  br_aes_ct64_cbcenc_run(&ctx, iv, data, (size_t) DATA_LEN);
  return 0;
}
