//https://crocs-muni.github.io/ct-tools/examples/09

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "../../__libsym__/sym.h"

typedef uint32_t (* issue_t)(const uint32_t, const uint32_t);


uint32_t func(const uint32_t a) {
  return 5;
}

uint32_t issue(const uint32_t a, const uint32_t b) {
  uint32_t c = 0;
  const uint32_t d = func(b);
  if(d > 255) {
    c = a;
  }
  else {
    c = a + 1;
  }

  return c;
}


int main(int argc, char * argv[]) {
  uint32_t a = 0, b = 0;


  // b is our secret value, we read its content from the environment so the 
  // compiler cannot play tricks on us by inlining
  HIGH_INPUT(4)(&b);
  LOW_INPUT(4)(&a);

  // declarations and markup here
  volatile issue_t func = issue;
  return func(a, b);
}