#include "../../__libsym__/sym.h"
#include "lib.h"

int main() {
  unsigned int x;  // private

  high_input_4(&x);
  
  int res = constant_time_is_zero_8(x);
  return res;
}
