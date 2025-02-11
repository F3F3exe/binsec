#include <stdint.h>
#include <stdio.h>
#include "../../__libsym__/sym.h"

typedef uint8_t(* issue_t)(const uint8_t *, const uint8_t *);

uint8_t issue(const uint8_t *a, const uint8_t *b) {
  return a[b[0]];
}

int main(int argc, char *argv[]) {
  uint8_t a[2] ={2, 5}, b[2] = {0};
  // b is our secret value containing array, we read its content from the
  // environment so the compiler cannot play tricks on us by inlining
  HIGH_INPUT(4)(b);
  LOW_INPUT(4)(a);

  volatile issue_t func = issue;
  return func(a,b);
}