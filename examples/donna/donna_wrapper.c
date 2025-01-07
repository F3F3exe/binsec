#include <stdlib.h>
#include "donna.c"

u8 mypublic[32];  // declassified in output
  u8 secret[32];    // secret
  u8 basepoint[32]; // public

int main() {
  
  // high_input_32(mypublic);
  // high_input_32(secret);
  // low_input_32(basepoint);

  int res = curve25519_donna(mypublic,secret,basepoint);
  exit(1);
  return res;
}
