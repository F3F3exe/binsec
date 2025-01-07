#include <stdlib.h>
#include "lib.h"

unsigned int x, y;  // private
int main() {
  

  // high_input_4(&x);
  // high_input_4(&y);
  
  int res = constant_time_lt(x, y);
  exit(res);
  return res;
}
