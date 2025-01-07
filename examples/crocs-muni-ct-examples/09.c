//https://crocs-muni.github.io/ct-tools/examples/09

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "issue.h"

typedef uint32_t (* issue_t)(const uint32_t, const uint32_t);

 uint32_t a = 0, b = 0;

int main(int argc, char * argv[]) {
 

  // b is our secret value, we read its content from the environment so the 
  // compiler cannot play tricks on us by inlining
  
  // declarations and markup here
  volatile issue_t func = issue_09;
exit(1);
  return 0;
}