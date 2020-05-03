global _start

section .data
    msg1: db "HELLO",10
    msg2: db "What is your name??",10
    msg3: db "Welcome!!"
    
 section .bss
     name resb 10

section .text
    _start:
        call _print1
        call _print2
        call _getname
        call _print3
        call _exit
        
_print1:
    mov rax,1
    mov rdi,1
    mov rsi,msg1
    mov rdx,6
    syscall
    ret
    
_print2:
    mov rax,1
    mov rdi,1
    mov rsi,msg2
    mov rdx,20
    syscall
    ret
    
_getname:
    mov rax,0
    mov rdi,0
    mov rsi,name
    mov rdx,20
    syscall
    ret
    
_print3
    mov rax,1
    mov rdi,1
    mov rsi,msg3
    mov rdx,20
    syscall

_exit:
    mov rax,60
    xor rdi,rdi
    syscall