#include<stdio.h>
#include<conio.h>
#include<ctype.h>
int main()
{
	char a[100];
	int flag=0;
	printf("enter the identifier:");
	scanf("%s",&a);
	if(isalpha(a[0]))
	{
		flag=1;
	}
	else
	{
		flag=0;
	}
	if(flag==1)
	{
		printf("%s is valid identifier",a);
	}
	else
	{
		printf("not valid identifier");
	}
}
