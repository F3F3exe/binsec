/* Source: https://github.com/imdea-software/verifying-constant-time/blob/master/examples/sort/sort.c */
#include <stdlib.h>
#include "lib.h"
#include "../../__libsym__/sym.h"

int main() {
 
 int out[3];
  int in[3];

  high_input_12(&out);
  high_input_12(&in);

  sort3_negative(out,in);
  return 0;
}
