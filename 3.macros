%{
int nmacro,nheader;
%}
%%
^#define {nmacro++;}
^#include {nheader++; }
.|\n {}
%%
int yywrap(void)
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("number of macro defined=%d\n",nmacro);
printf("number of header files included=%d\n",nheader);
fclose(yyin);
}
