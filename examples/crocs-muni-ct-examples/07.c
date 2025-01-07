#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "issue.h"

typedef uint8_t(* issue_t)(const uint8_t, const uint8_t, const uint8_t, const uint8_t);


 uint8_t a = 2, b = 5, c = 0;
int main(int argc, char *argv[]) {
 
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


  volatile issue_t func = issue_07;
  exit(1);
  return 0;
}