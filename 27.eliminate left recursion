#include<stdio.h>
int main()
{
	int i,j,f,n=0;
	char a[100],b[100],c[100];
	printf("Enter a production: ");
	gets(a);
	f=a[0];
	if(a[0]==a[3])
	{
		for(i=4;a[i]!='\0';i++)
		{
			for(j=0;a[i]!='/';i++)
			{
				b[j]=a[i];
				j++;
			}
			i++;
			for(j=0;a[i]!='\0';j++)
			{
				c[j]=a[i];
				i++;
				n++;
			}	
		}
		printf("%c->",f);
		for(i=0;c[i]!='\0';i++)
		{
			printf("%c",c[i]);
		}
		printf("%c'\n",f);
		printf("%c'->",f);
		for(i=0;i<=n;i++)
		{
			printf("%c",b[i]);
		}
		printf("%c'",f);
		printf("/$");
	}
	else 
	printf("Not a left recursion");
	
}
