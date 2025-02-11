#include "lib.h"
#include "../../__libsym__/sym.h"


int main() {
  unsigned int mask, x, y;  // private

  high_input_4(&mask);
  high_input_4(&x);
  high_input_4(&y);
  
  int res = constant_time_select_8(mask, x, y);
  return res;
}
