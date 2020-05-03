;Write an assembly language /inline assembly language program to demonstrate the working of different addressing modes?

global start
section .bss
 x resb 10

section.text
start:

	;immediate addressing mode
	mov rax,3

	;register addressing mode
	mov rbx,1
	sub rax,rbx

	;register indirect 
	mov rcx,2
	mov rsi,[rcx]

	;direct addressing mode
	add rax,[2]

	;index addressing mode
	mov rax,[rsi+30]
	
	;base addressing mode
	add rax,[rsi+rbx]

	;exit
	mov rax,60
	xor rdi,rdi
	syscall


