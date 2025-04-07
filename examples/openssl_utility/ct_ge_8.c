#include "lib.h"
#include "../../__libsym__/sym.h"


int main() {
  
unsigned int x, y;  // private

  high_input_4(&x);
  high_input_4(&y);
  
  int res = constant_time_ge_8(x, y);
  return res;
}
