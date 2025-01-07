#include <sodium.h>
#include <stdlib.h>

#define MSG_LEN 256
#define BYTES 64                /* crypto_hash_sha512_BYTES */


unsigned char message[MSG_LEN];
  unsigned char out[crypto_hash_sha512_BYTES];
  int msg_len;

int main() {
  msg_len = MSG_LEN;

  // HIGH_INPUT(MSG_LEN)(message);
  // HIGH_INPUT(BYTES)(out);
  
  int res = crypto_hash_sha512(out, message, msg_len);
  exit(res);
  return res;
}
