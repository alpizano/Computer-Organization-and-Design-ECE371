#include<stdio.h>
extern int sum(int a, int b);
int main(int argc, char *argv[]){
    int a, b;
    
    a = 10;
    b = 20;
    
    printf("Sum of %d and %d is %d\n",a, b, sum(a,b));
    
    return 0;
}