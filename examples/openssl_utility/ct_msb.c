#include "lib.h"
#include "../../__libsym__/sym.h"

int main() {

  unsigned int x;  // private

  high_input_4(&x);
  
  int res = constant_time_msb(x);
  return res;
}
