%{
#include<stdio.h>
%}
%%
[a-z A-Z 0-9_]+(@[a-z]+)(.[a-z]+) {printf("%s is a valid email", yytext); }
.* {printf("It is not a valid email"); }
%%
int main()
{
printf("\n Enter the email :");
yylex();
}
int yywrap()
{
return 1;
}
