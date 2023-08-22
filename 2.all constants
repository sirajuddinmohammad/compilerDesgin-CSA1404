digit [0-9]
%{
int cons=0;
%}pq;a
%%
{digit}+ { cons++; printf("%s is a constant\n", yytext); }
.|\n {}
%%
int yywrap(void) {
return 1;
}
int main(void)
{
File *f;
char file[10];
printf("enter file name : ");
scanf("%s",file);
f = fopen(file,"r");
yyin =f;
yylex();
printf("number of constants : %d\n", cons);
fclose(yyin);
}
