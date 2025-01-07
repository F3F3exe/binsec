//https://crocs-muni.github.io/ct-tools/examples/06

#include <errno.h>
#include <fcntl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


/*
#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
*/

typedef void(* issue_t)(uint8_t*, size_t);



int main(void) {
  uint8_t out[1] = {0};
  size_t size = 1;
  // this test has no secret variables from the start, but the randomness from 
  // /dev/urandom or SYS_getrandom may be the input to some function generating
  // a secret 

  // declarations and markup here

  volatile issue_t func = issue;
  func(out, size);

  return 0;
}