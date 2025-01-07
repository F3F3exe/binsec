//https://crocs-muni.github.io/ct-tools/examples/04

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "issue.h"

typedef uint8_t(* issue_t)(const uint8_t*, const uint8_t*);

uint8_t a[2], b[2];

int main(int argc, char *argv[]) {
  uint8_t a[2] ={2, 5}, b[2] = {0};
 
  // make sure b[0] is either 0 or 1
 
  // declarations and markup here
  
  volatile issue_t func = issue_04;
  exit(1);
  printf("%d\n", func(a, b));

  return 0;
}