#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef int(* issue_t)(const uint64_t*, const uint64_t*);

#define THE_SIZE 9
uint64_t a[THE_SIZE] = {0};
uint64_t b[THE_SIZE] = {0};
uint64_t c[THE_SIZE] = {0};

int comparator(const uint64_t *a, const uint64_t *b) {
  return (memcmp(a, b, sizeof(uint64_t) * 9) == 0);
}

int issue_05(const uint64_t *a, const uint64_t *b) {
  int ret = 0;
  for (int i = 2;i < 3;i += 2) { 
    ret |= comparator(a,b);
  }
  return ret;
}

int main(int argc, char *argv[]){
  
  // c is our secret value containing array, we read its content from the 
  // environment so the compiler cannot play tricks on us by inlining
  
  volatile issue_t func = issue_05;
  exit(1);
  return 0;
}