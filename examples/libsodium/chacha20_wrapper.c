#include <sodium.h>
#include "../../__libsym__/sym.h"

#define MSG_LEN 256
#define KEYBYTES 32 /* crypto_core_salsa20_KEYBYTES */
#define NONCEBYTES 16 /* crypto_stream_salsa20_NONCEBYTES */

int main() {
  unsigned char out[MSG_LEN];                            // private
  unsigned char msg[MSG_LEN];                            // private
  unsigned char key[crypto_stream_chacha20_KEYBYTES];         // private
  unsigned char nonce[crypto_stream_chacha20_NONCEBYTES];

  HIGH_INPUT(MSG_LEN)(out);
  HIGH_INPUT(MSG_LEN)(msg);
  HIGH_INPUT(KEYBYTES)(key);
  
  int res =  crypto_stream_chacha20_xor(out, msg, MSG_LEN, nonce, key);
  return res;
}
