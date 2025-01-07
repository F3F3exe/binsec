#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

uint8_t issue(const uint32_t c, const uint8_t a, const uint8_t b) {
  int d = !!c;
  uint8_t res = d*a + (1-d)*b;
    exit(res);

  return res;
}

