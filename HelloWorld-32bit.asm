section .data
	msg: db "Hello World",10,0

section .text
	extern printf
	global main

main:
	push ebp
	mov ebp,esp
	push msg
	call printf
	mov esb,ebp
	pop ebp
	ret
