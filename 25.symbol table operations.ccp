#include<stdio.h>
#include<math.h>
#include<string.h>
#include<ctype.h>
#include<stdlib.h>
int main()
{
	int x=0, n, i=0,j=0;
 	void *mypointer,*a[5];
 	char ch,b,Arr2[15],Arr3[15],c;
 	printf("Input the expression ending with $ sign:");
 	while((c=getchar())!='$')
 	{
  		Arr2[i]=c;
  		i++;
 	}
 	n=i-1;
 	printf("Given Expression:");
 	i=0;
 	while(i<=n)
 	{
  		printf("%c",Arr2[i]);
  		i++;
 	}
 	printf("\n Symbol Table display\n");
 	printf("Symbol \t addr \t type");
 	while(j<=n)
 	{
  		c=Arr2[j];
  		if(isalpha(toascii(c)))
  		{
   			mypointer=malloc(c);
   			a[x]=mypointer;
   			Arr3[x]=c;
   			printf("\n%c \t %d \t identifier\n",c,mypointer);
   			x++;
   			j++;
  		}
  		else
  		{
  			ch=c;
   			if(ch=='+'||ch=='-'||ch=='*'||ch=='=')
   			{
    			mypointer=malloc(ch);
    			a[x]=mypointer;
    			Arr3[x]=ch;
    			printf("\n %c \t %d \t operator\n",ch,mypointer);
    			x++;
    			j++;
   			}
		}
	}
   return 0;
}
