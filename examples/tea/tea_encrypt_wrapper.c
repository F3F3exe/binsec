#include "tea.c"
#include <stdlib.h>

unsigned long key[4];     // The secret
  unsigned long data[2];    // The message to encrypt/decrypt
  unsigned long out[2];     // The output buffer
int main() {

  
  
  encipher(data, out, key);
  exit(1);
  return 0;
}
