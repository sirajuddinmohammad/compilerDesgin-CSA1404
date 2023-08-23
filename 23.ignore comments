#include <stdio.h>

int main() {
    int c;
    int in_comment = 0; 

    while ((c = getchar()) != EOF) {
        if (in_comment) {
            if (c == '*' && (c = getchar()) == '/') {
                in_comment = 0;
            }
        } else {
            if (c == '/' && (c = getchar()) == '*') {
                in_comment = 1;
            } else if (c == ' ' || c == '\t') {
                while ((c = getchar()) == ' ' || c == '\t');
                putchar(' ');
            } else {
                putchar(c);  
            }
        }
    }

    return 0;
}
