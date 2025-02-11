#include "lib.h"
#include "../../__libsym__/sym.h"

unsigned int x, y;  // private

int main() {
  

  high_input_4(&x);
  high_input_4(&y);
  
  int res = constant_time_ge(x, y);
  return res;
}
