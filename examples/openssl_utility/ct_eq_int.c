#include "../../__libsym__/sym.h"
#include "lib.h"

int main() {
  int x, y;  // private

  high_input_4(&x);
  high_input_4(&y);
  
  int res = constant_time_eq_int(x, y);
  return res;
}
