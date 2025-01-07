#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "issue.h"

typedef uint8_t(* issue_t)(const uint8_t *, const uint8_t *);
#define SIZE (1 << 4) /* 16B */
uint32_t a[SIZE],b[SIZE],c[SIZE];



int main(int argc, char *argv[]) {
  uint8_t a[2] ={2, 5}, b[2] = {0};
  // b is our secret value containing array, we read its content from the
  // environment so the compiler cannot play tricks on us by inlining
  
  volatile issue_t func = issue_03;
  exit(0);

  return 0;
}