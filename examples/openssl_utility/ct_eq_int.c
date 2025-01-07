#include <stdlib.h>
#include "lib.h"

int x, y;  // private
int main() {
  

  // high_input_4(&x);
  // high_input_4(&y);
  
  int res = constant_time_eq_int(x, y);
  exit(res);
  return res;
}
