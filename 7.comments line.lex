%{
int com = 0;
%}
%%
"/*"[^\n]+"*/" {com++; fprintf(yyout," ");}
\/\/.* {; com++; fprintf(yyout," ");}
%%
void main(int argc, char *argv[])
{
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("\n number of comments are = %d\n",com);
}
int yywrap()
{
return 1;
}
