SECTION .data
msg: db "Salut" ,6 
newline: db 10

SECTION .text

global _start
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 5
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, newline
	mov rdx, 1
	syscall

	mov rax, 60
	mov rdi, 1
	syscall
