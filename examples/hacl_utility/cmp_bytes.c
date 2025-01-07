#include <stdlib.h>
#include "Hacl_Policies.h"
#include <stdint.h>

#define LEN 200
uint8_t b1[LEN];
  uint8_t b2[LEN];
int main() {
  

  // HIGH_INPUT(LEN)(b1);
  // HIGH_INPUT(LEN)(b2);

  int res = Hacl_Policies_cmp_bytes(b1,b2,LEN);
  exit(res);
  return res;
}
