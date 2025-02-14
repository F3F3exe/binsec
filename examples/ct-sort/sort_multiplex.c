/* Source: https://github.com/imdea-software/verifying-constant-time/blob/master/examples/sort/sort.c */
#include <stdlib.h>
#include "lib.h"
#include "../../__libsym__/sym.h"


#define LEN 12     /* int out[3]; => 3 * 4 */


int main() {
  
int out[3];
  int in[3];

  high_input_12(&out);
  high_input_12(&in);
  //HIGH_INPUT(LEN)(out);
  //HIGH_INPUT(LEN)(in);

  sort3_multiplex(out,in);
  return 0;
}
