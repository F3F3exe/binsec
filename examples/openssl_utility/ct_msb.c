#include "lib.h"
#include <stdlib.h>

  unsigned int x;  // private


int main() {

  //high_input_4(&x);
  
  int res = constant_time_msb(x);
  exit(res);
  return res;
}
