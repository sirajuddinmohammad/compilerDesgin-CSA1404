%{
#include <stdio.h>
int cid = 0, ckey = 0;
%}

%%
(stdio.h|conio.h) { printf("%s is a standard library\n", yytext); }
(include|void|main|printf|int) { printf("%s is a keyword\n", yytext); ckey++; }
[a-zA-Z]([a-zA-Z]|[0-9])* { printf("%s is an identifier\n", yytext); cid++; }
[0-9]+ { printf("%s is a number\n", yytext); }
\"(\\.|[^\"])*\" { printf("%s is a string literal\n", yytext); }
.|\n { }
%%

int yywrap(void) {
    return 0;
}

int main(void) {
    yylex();
    printf("Total identifiers: %d\n", cid);
    printf("Total keywords: %d\n", ckey);
    return 0;
}
