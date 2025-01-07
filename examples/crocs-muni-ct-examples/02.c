//https://crocs-muni.github.io/ct-tools/examples/02

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "issue.h"

typedef uint8_t(* issue_t)(const uint32_t, const uint8_t, const uint8_t);

uint32_t a,b,c;

int main(int argc, char *argv[]) {
  uint32_t a = 2, b = 5, c = 0;
  // c is our secret value, we read its content from the environment so the
  // compiler cannot play tricks on us by inlining
 

  volatile issue_t func = issue_02;
  exit(0);
  return 0;
}