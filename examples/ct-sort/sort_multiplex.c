/* Source: https://github.com/imdea-software/verifying-constant-time/blob/master/examples/sort/sort.c */
#include <stdlib.h>
#include "lib.h"

int out[3];
  int in[3];
int main() {
  

  // high_input_12(&out);
  // high_input_12(&in);

  sort3_multiplex(out,in);
  exit(1);
  return 0;
}
