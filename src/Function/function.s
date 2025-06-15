SECTION .data
msg: db "Salut" ,10

SECTION .text
global _start
_start:
	call helloworld
	mov rax, 60
	mov rdi, 1 ; exit code
	syscall

helloworld:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 6
	syscall
	ret
