#include "lib.h"
#include <stdlib.h>

unsigned int mask, x, y;  // private

int main() {
  

  // high_input_4(&mask);
  // high_input_4(&x);
  // high_input_4(&y);
  
  int res = constant_time_select_8(mask, x, y);
  exit(res);
  return res;
}
