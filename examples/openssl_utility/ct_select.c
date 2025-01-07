#include "lib.h"
#include <stdlib.h>

unsigned int mask, x, y;  // private

int main() {

  
  int res = constant_time_select(mask, x, y);
  exit(res);
  return res;

}
