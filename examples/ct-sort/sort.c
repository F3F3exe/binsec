/* Source: https://github.com/imdea-software/verifying-constant-time/blob/master/examples/sort/sort.c 

(Modified by Lesly-Ann Daniel)
*/
#include <stdlib.h>
#include "lib.h"
#include "../../__libsym__/sym.h"


int conds[3];
  int out[3];
  int in[3];
int main() {
  

  high_input_12(&conds);
  high_input_12(&out);
  high_input_12(&in);

  sort3(conds,out,in);
  return 0;
}
