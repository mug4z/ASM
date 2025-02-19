SECTION .data
msg: db "Salut" ,6 

SECTION .text
global main		
main:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 5
	syscall

	mov rax, 60
	syscall
