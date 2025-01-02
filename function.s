SECTION .data
msg: db "Salut" ,6

SECTION .text 
global _start
_start:
	call helloworld
	mov rax, 60
	syscall

helloworld:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 5
	syscall
	ret
