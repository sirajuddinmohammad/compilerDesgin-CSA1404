%{
#include<stdio.h>
%}
%%
[6-9][0-9]{9} {printf("It is a mobile number",yytext);}
.+printf("It is not a mobile number");
%%
int main()
{
printf("\n Enter the input string:");
yylex();
}
int yywrap()
{
return 1;
}
