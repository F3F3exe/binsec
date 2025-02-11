//https://crocs-muni.github.io/ct-tools/examples/04

#include <stdint.h>
#include <stdio.h>
#include "../../__libsym__/sym.h"

typedef uint8_t(* issue_t)(const uint8_t*, const uint8_t*);

uint8_t issue(const uint8_t *a, const uint8_t *b) {
  return !b[0]*a[0] + b[0]*a[1];
}

int main(int argc, char *argv[]) {
  uint8_t a[2] ={2, 5}, b[2] = {0};
 
  // make sure b[0] is either 0 or 1
 
  // declarations and markup here
  HIGH_INPUT(4)(a);
  LOW_INPUT(4)(b);

  volatile issue_t func = issue;

  return func(a,b);
}