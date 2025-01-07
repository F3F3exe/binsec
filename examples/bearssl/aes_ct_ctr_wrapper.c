#include "inc/bearssl.h"
#include <stdint.h>


#define KEY_LEN 240 /* uint32_t skey[60]; => 60 * 4 */
#define N_ROUND 2
#define IV_LEN br_aes_big_BLOCK_SIZE /* 16 bytes */
#define DATA_LEN 32   /* Must be a multiple of block size */

unsigned char data[DATA_LEN];
uint8_t skey[60];
 uint8_t iv[IV_LEN];
  size_t len;
   uint32_t counter = 1;

  
void stop(int res){
	for(;;) {}
}

int main(){  
  br_aes_ct_ctr_keys ctx;
  ctx.vtable = &br_aes_ct_ctr_vtable;
  ctx.num_rounds = N_ROUND;
  len = (size_t) DATA_LEN;

  //HIGH_INPUT(KEY_LEN)(ctx.skey);
  //HIGH_INPUT(DATA_LEN)(data);

  br_aes_ct_ctr_run(&ctx, iv, counter, data, len);
  stop(iv[0]);
  return 0;
}