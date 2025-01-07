#include <stdlib.h>
#include "kremlib_base.h"
#include <stdint.h>
 uint8_t x;
  uint8_t y;
int main() {
 

  // HIGH_INPUT(1)(&x);
  // HIGH_INPUT(1)(&y);

  int res = FStar_UInt8_eq_mask(x,y);
  exit(res);
  return res;
}
