#include <stdlib.h>
#include "donna.c"
#include "../../__libsym__/sym.h"



int main() {
  
u8 mypublic[32];  // declassified in output
  u8 secret[32];    // secret
  u8 basepoint[32]; // public
  
   high_input_32(mypublic);
   high_input_32(secret);
   low_input_32(basepoint);

  int res = curve25519_donna(mypublic,secret,basepoint);
 
  return res;
}
