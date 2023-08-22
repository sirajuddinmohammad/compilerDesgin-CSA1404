%{
#include<stdio.h>

  int op=0;
  int i;
  float a,b;
  int digit();
%}  
digit [0-9]+|([0-9]*)"."([0-9]+)
add "+"
sub "-"
mul "*"
div "/"
pow "^"
ln \n
%%
{digit} {digit();} 
{add} {op=1;}
{sub} {op=2;}
{mul} {op=3;}
{div} {op=4;}
{pow} {op=5;}
{ln} {printf("\n The answer :%f\n\n",a);} 
%%
int digit()
{
 if(op==0)
 a=atof(yytext);   
 else
 {
 b=atof(yytext);
 switch(op)
 {
   case 1:a=a+b;
    break;
   case 2:a=a-b;
   break;
   case 3:a=a*b;
   break;
   case 4:a=a/b;
   break;
   case 5:for(i=a;b>1;b--)
   a=a*i;
   break;
  }
 op=0;
 }
} 
int main()
{
printf("enter operation along with values");
 yylex();
} 
int yywrap()
{ }
