#include <sodium.h>
#include "../../__libsym__/sym.h"

#define MSG_LEN 256
#define BYTES 32                /* crypto_hash_sha256_BYTES */


int main() {

 unsigned char message[MSG_LEN];              // private
  unsigned char out[crypto_hash_sha256_BYTES]; // private

  HIGH_INPUT(MSG_LEN)(message);
  HIGH_INPUT(BYTES)(out);
  
  int res = crypto_hash_sha256(out, message, MSG_LEN);
  return res;
}
