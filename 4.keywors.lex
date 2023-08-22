%{
#include<stdio.h>
%}

%%
if|else {printf("%s is a keyword", yytext);}
[0-9]+ {printf("%s is a digit", yytext);}
[a-z A-Z]+ {printf("%s is an alphabet", yytext);}
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
