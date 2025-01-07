#include <stdlib.h>
#include "lib.h"

unsigned int x;  // private
int main() {
  

  //high_input_4(&x);
  
  int res = constant_time_is_zero(x);
  exit(res);
  return res;
}
