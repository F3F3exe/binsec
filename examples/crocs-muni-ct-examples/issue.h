#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

uint8_t issue_02(const uint32_t c, const uint8_t a, const uint8_t b) {
  int d = !!c;
  return d*a + (1-d)*b;
}

uint8_t issue_03(const uint8_t *a, const uint8_t *b) {
  
  uint8_t res = a[b[0]];
  exit(res);
  return res;
}

uint8_t issue_04(const uint8_t *a, const uint8_t *b) {
  return !b[0]*a[0] + b[0]*a[1];
}

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




uint8_t issue_07(const uint8_t c, const uint8_t a, const uint8_t b, const uint8_t len) {
  uint8_t d = !!c;
  if(len <= 254) {
    return d*a + (1-d)*b;
  }
  else {
    if(c) {
      return a;
    }
    else {
      return b;
    }
  }
}

uint32_t func(const uint32_t a) {
  return a*5;
}

uint32_t issue_08(const uint32_t a, const uint32_t b) {
  uint32_t c = 0;
  if(b > 255) {
    c = func(a);
  }
  else {
    c = func(a);
  }

  return c;
}

uint32_t func_2(const uint32_t a) {
  return 5;
}

uint32_t issue_09(const uint32_t a, const uint32_t b) {
  uint32_t c = 0;
  const uint32_t d = 254; //func_2(b);
  if(d > 255) {
    c = a;
  }
  else {
    c = a + 1;
  }

  return c;
}

uint32_t issue_10(const uint32_t a) {
  uint32_t b = 0;
  srand(a);
  while(1) {
    b = rand();
    if(b > 255) break;
  }

  return b;
}
