global _start

section .data
    msg1: db "Enter a number",10
    
 section .bss
     num resb 2

section .text
    _start:
        call _print1
        call _getname
        call _print2
        call _exit
_print1:
    mov rax,1
    mov rdi,1
    mov rsi,msg1
    mov rdx,15
    syscall
    ret       
_getname:
    mov rax,0
    mov rdi,0
    mov rsi,num
    mov rdx,2
    syscall
    ret
    
_print2:
    mov rax,1
    mov rdi,1
    mov rsi,num
    mov rdx,2
    syscall 
    ret
_exit:
    mov rax,60
    xor rdi,rdi 
    syscall

