#include <stdint.h>
#include <string.h>
#include "../../__libsym__/sym.h"

typedef int(* issue_t)(const uint64_t*, const uint64_t*);

#define THE_SIZE 9

int comparator(const uint64_t *a, const uint64_t *b) {
  return (memcmp(a, b, sizeof(uint64_t) * THE_SIZE) == 0);
}

int issue(const uint64_t *a, const uint64_t *b) {
  int ret = 0;
  for (int i = 2;i < 3;i += 2) { 
    ret |= comparator(a,b);
  }
  return ret;
}

int main(int argc, char *argv[]){
  uint64_t a[THE_SIZE] = {0}, b[THE_SIZE] = {0}, c[THE_SIZE] = {0};
  // c is our secret value containing array, we read its content from the 
  // environment so the compiler cannot play tricks on us by inlining
  HIGH_INPUT(4)(c);  
  LOW_INPUT(4)(a);
  LOW_INPUT(4)(b);

  volatile issue_t func = issue;
  return func(a,c);
}