#include<stdio.h>
int main()
{
	int a;
	scanf(“%d”,&a);
	rev(a);
}
int rev(int a)
{
	int x=0,y;
	__asm
	{
		r:
			mov eax,x
			mov ebx,10
			imul  ebx
			mov y,eax
			mov eax,a
			mov ebx,10
			idiv ebx
			add y,edx
			mov a,eax
			cmp a,0
			jne r
	}
}
