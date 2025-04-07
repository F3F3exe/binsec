#include <stdint.h>
#include "../../__libsym__/sym.h"
#include <stdio.h>

int CT_checkPW(char *pw, char *input, int len){
    int res = 1;
    for(int i = 0; i < len; i++){
        res &= pw[i] == input[i];
    }
    return res;
}



int main(int argc, char *argv[]) {
  char* pw = "password";
  char* input = "oasspul";
  // c is our secret value
 
  HIGH_INPUT(8)(&pw);
  LOW_INPUT(8)(&input);
  
  //printf("%d\n", CT_checkPW(pw,input,8));
  return CT_checkPW(pw,input,8);
}