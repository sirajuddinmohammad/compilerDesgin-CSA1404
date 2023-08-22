%{
#include <stdio.h>
int month, day, year;
%}
%%
[0-9]{2}\/[0-9]{2}\/[0-9]{4} {
sscanf(yytext, "%d/%d/%d", &day, &month, &year);
if (month < 1 || month > 12) {
printf("Invalid date\n");
} else {
int max_day = 31;
if (month == 4 || month == 6 || month == 9 || month == 11) {
max_day = 30;
} else if (month == 2) {
max_day = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? 29 :28;
}
if (day < 1 || day > max_day) {
 printf("Invalid date\n");
} else {
 printf("Valid date\n");
}
}
}	
.|\n
%%
int yywrap(){}
int main() {
 yylex();
return 0;
}
