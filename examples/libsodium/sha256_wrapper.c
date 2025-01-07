#include <sodium.h>
#include <stdlib.h>

#define MSG_LEN 256
#define BYTES 32                /* crypto_hash_sha256_BYTES */


 unsigned char message[MSG_LEN];              // private
  unsigned char out[crypto_hash_sha256_BYTES]; // private
unsigned long long len;
int main() {
 
  len = MSG_LEN;
  //HIGH_INPUT(MSG_LEN)(message);
  //HIGH_INPUT(BYTES)(out);
  
  int res = crypto_hash_sha256(out, message, len);
  exit(res);
  return res;
}
