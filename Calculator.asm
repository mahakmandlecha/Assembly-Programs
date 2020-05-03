#include<stdio.h>
int addition(int a ,int b)
{
    int c;
    __asm{
        mov eax,a
        mov ebx,b
        add eax,ebx
        mov c,eax
        }
        return  c;
}
int sub(int a ,int b)
{
    int c;
    __asm{
        mov eax,a
        mov ebx,b
        sub eax,ebx
        mov c,eax
        }
        return  c;
}
int multiply(int a ,int b)
{
    int c;
    __asm{
        mov eax,a
        mov ebx,b
        imul eax,ebx
        mov c,eax
        }
        return  c;
}
int divide(int a ,int b)
{
    int c;
    __asm{
        mov eax,a
        mov ebx,b
        div eax
        mov c,eax
        }
        return  c;
}
int mod(int a ,int b)
{
    int c;
    __asm{
        mov eax,a
        mov ebx,b
        div  ebx
        mov c,ebx
        }
        return  c;
}
 
    

void main()
{
    int a,b;
    scanf("%d %d",&a,&b);
    addition(a,b);
    sub(a,b);
    multiply(a,b);
    mod(a,b);
}
