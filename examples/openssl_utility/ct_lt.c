#include "../../__libsym__/sym.h"
#include "lib.h"

int main() {
  unsigned int x, y;  // private

  high_input_4(&x);
  high_input_4(&y);
  
  int res = constant_time_lt(x, y);
  return res;
}
