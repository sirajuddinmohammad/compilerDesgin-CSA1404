%{
int tags;
%}
%%
"<"[^>]*>  { tags++;}
.|\n {}
%%
int yywrap(void) 
{
return 1; 
}
int main(int argc, char *argv[]) {
yyin = fopen(argv[1],"r");
yylex();
printf("\n Number of html tags: %d",tags);
fclose(yyin);
}
