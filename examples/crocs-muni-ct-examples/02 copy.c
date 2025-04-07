#include <stdint.h>
#include "../../__libsym__/sym.h"

uint8_t issue(const uint32_t c, const uint8_t a, const uint8_t b) {
  int d = !!c;
  return d*a + (1-d)*b;
}

int main(int argc, char *argv[]) {
  uint32_t a = 2, b = 5, c = 0;
  // c is our secret value
 
  HIGH_INPUT(4)(&c);
  LOW_INPUT(4)(&a);
  LOW_INPUT(4)(&b);

  return issue(c,a,b);
}