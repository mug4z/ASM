SECTION .data
msg: db "Salut" ,6
newline: db 10 ; Newline ascii

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
	mov rdx, 5
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, newline
	mov rdx, 1
	syscall
	ret
