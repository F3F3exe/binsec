#include "../../__libsym__/sym.h"
#include "inc/bearssl.h"
#include <stdint.h>

#define KEY_LEN 240 /* uint32_t skey[60]; => 60 * 4 */
#define N_ROUND 2
#define IV_LEN br_aes_big_BLOCK_SIZE /* 16 bytes */
#define DATA_LEN 32   /* Must be a multiple of block size */

int main(){  
  br_aes_big_cbcenc_keys ctx;
  ctx.vtable = &br_aes_big_cbcenc_vtable;
  ctx.num_rounds = N_ROUND;
  uint8_t iv[IV_LEN];
  uint8_t data[DATA_LEN];
  uint32_t len = (size_t) DATA_LEN;

  HIGH_INPUT(KEY_LEN)(ctx.skey);
  HIGH_INPUT(DATA_LEN)(data);

  LOW_INPUT(IV_LEN)(iv);
  LOW_INPUT(4)(&len);

  br_aes_big_cbcenc_run(&ctx, iv, data, len);
  return 0;
}


/*

make aes_big
make_coredump.sh core_aes_big.snapshot aes_big
binsec -sse -sse-script checkct_aes_big.cfg -sse-depth 100000000 -checkct-stats-file ./2.csv   -checkct core_aes_big.snapshot

*/
