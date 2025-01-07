#include "inc/bearssl.h"
#include <stdint.h>
#include <stdlib.h>

#define KEY_LEN 384     /* uint32_t skey[96]; => 96 * 4 */
#define N_ROUND 2
#define BLOCK_SIZE br_des_tab_BLOCK_SIZE  /* 8 bytes */
#define IV_LEN br_des_tab_BLOCK_SIZE
#define DATA_LEN 16   /* Must be a multiple of block size */

uint8_t data[DATA_LEN];
uint8_t skey[96];
uint8_t len;
uint32_t iv[IV_LEN];

void stop(int res){
  for(;;){

  }
}

int main(){  
  br_des_ct_cbcdec_keys ctx;
  ctx.vtable = &br_des_ct_cbcdec_vtable;
  ctx.num_rounds = N_ROUND;
  
  uint8_t data[DATA_LEN];
  len = 16;

  //HIGH_INPUT(KEY_LEN)(ctx.skey);
  //HIGH_INPUT(DATA_LEN)(data);

  br_des_ct_cbcdec_run(&ctx, iv, data, len);
  stop(iv[0]);
  return 0;
}
