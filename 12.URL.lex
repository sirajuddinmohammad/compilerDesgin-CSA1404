%%
www\.[a-zA-Z0-9.-]+\.(com|in) { printf("Valid URL\n"); }
.+ {  printf("invalid URL\n"); }
%%
int yywrap(){}
int main() 
{
printf("enter url=");
 yylex();
 return 0;
}
