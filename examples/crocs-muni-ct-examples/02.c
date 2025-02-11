//https://crocs-muni.github.io/ct-tools/examples/02

#include <stdint.h>
#include "../../__libsym__/sym.h"
#include <stdio.h>

typedef uint8_t(* issue_t)(const uint32_t, const uint8_t, const uint8_t);

uint8_t issue(const uint32_t c, const uint8_t a, const uint8_t b) {
  int d = !!c;
  return d*a + (1-d)*b;
}

uint32_t a,b,c;

int main(int argc, char *argv[]) {
  uint32_t a = 2, b = 5, c = 0;
  // c is our secret value, we read its content from the environment so the
  // compiler cannot play tricks on us by inlining
 
  HIGH_INPUT(4)(&c);
  LOW_INPUT(4)(&a);
  LOW_INPUT(4)(&b);

  volatile issue_t func = issue;

  return func(c,a,b);
}