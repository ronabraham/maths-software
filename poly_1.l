/* attempting to match a polynomial expression 
1. single term has coeffecient * variable(exponent) format
matching pattern = [0-9]*[a-zA-Z][(]*[0-9]*[)]*
2. constant is a number
matching pattern = [0-9]*
3. operator is either plus or minus
matching pattern = \+ or \-
*/
%{
#include<math.h>
#include<wchar
char *variable;
int exponent;
int coefficient;
%}
%%
\+			{printf("matched text = %s\n",yytext);}	
[0-9]*[a-zA-Z][(]*[0-9]*[)]*	{
					printf("matched text = %s\n",yytext);
				}	
[0-9]*			{printf("matched text = %s\n",yytext);}	
%%
void convert_to_term(char*);
int main(void){
	yylex();
	return 1;	
}
void convert_to_term(char *s){
	printf("term identified: %s\n",s);
}

