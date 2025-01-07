
#include <stdlib.h>
int obs;
  int high;


int main () {

  
  // low_input_4(&obs);
  // high_input_4(&high);
  
  high = high * high;
  obs = high;

  if (obs == 16) {// Feasible with high = 4;
    obs = 0;
  } else {
    obs = 1;
  }
  exit(1);
  return 0;
}
