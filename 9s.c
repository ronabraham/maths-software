#include<stdio.h>
#include<math.h>
#include<string.h>
int main(int argc, char** argv){
	int base = 10;
	long unsigned int N = 0,dividend=0;;
	printf("Enter the Number");
	scanf("%ld",&N);
	//calculate num of digits in N
	int no_of_digits=0;
	dividend = N;
	while(dividend>10){
		dividend = dividend/base;
		no_of_digits++;
	}

	//incremement no_of_digits once for final dividend
	no_of_digits++;
	//printf("No. of digits in input number = %d\n",no_of_digits);
	long unsigned int result = pow(base,no_of_digits)-1-N;	
	printf("9s complement of %ld = %ld",N,result);
	
}
