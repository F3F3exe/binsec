#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "../../__libsym__/sym.h"

typedef uint8_t(* issue_t)(const uint8_t, const uint8_t, const uint8_t, const uint8_t);

uint8_t issue(const uint8_t c, const uint8_t a, const uint8_t b, const uint8_t len) {
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

int main(int argc, char *argv[]) {
  uint8_t a = 2, b = 5, c = 0;

  // c is our secret value, we read its content from the environment so the 
  // compiler cannot play tricks on us by inlining
 

  uint8_t len = 1;

  int fd = open("/dev/urandom", O_RDONLY);
  if(fd != -1) { 
    ssize_t ret = read(fd, &len, 1);
    close(fd);
    if(ret == -1) {
      fprintf(stderr, "Error while reading from /dev/urandom\n");
      abort();
    }
  }
  else {
    fprintf(stderr, "Error while opening /dev/urandom\n");
    abort();
  }

  HIGH_INPUT(4)(&c);  
  LOW_INPUT(4)(&a);
  LOW_INPUT(4)(&b);


  volatile issue_t func = issue;
  return func(c, a, b, len);
}