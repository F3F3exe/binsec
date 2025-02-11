#include <sodium.h>
#include "../../__libsym__/sym.h"

#define MSG_LEN 256
#define BYTES 64                /* crypto_hash_sha512_BYTES */




int main() {
  unsigned char message[MSG_LEN];
  unsigned char out[crypto_hash_sha512_BYTES];

  HIGH_INPUT(MSG_LEN)(message);
  HIGH_INPUT(BYTES)(out);
  
  int res = crypto_hash_sha512(out, message, MSG_LEN);
  return res;
}
