#include <stdlib.h>
#include "kremlib_base.h"
#include <stdint.h>
uint32_t x;
  uint32_t n;
int main() {
  

  // HIGH_INPUT(4)(&x);
  // HIGH_INPUT(4)(&n);

  int res = rotate32_left(x,n);
  exit(res);
  return res;
}
