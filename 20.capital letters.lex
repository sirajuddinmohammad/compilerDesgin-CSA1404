%{
#include<stdio.h>
%}
%%
[A-Z]+ {printf("%s", yytext);}
. ;
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
