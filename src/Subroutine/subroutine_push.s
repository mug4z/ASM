SECTION .data
msg:    db "Bonjour", 10

SECTION .text
global  _start
_start:
	mov rax, msg ; Move the address of the message in rax
	call save_push  ; Call the subroutine (function) strlen

	mov rdx,rax ; number of byte to write
	mov rax, 1 ; call write
	mov rdi, 1 ; use the stdout file descriptor
	mov rsi, msg
	syscall

	mov rax, 60
	mov rdi, 1	
	syscall


save_push:
	push rbx ; example of PUSH
	mov rbx, rax ; Move the address in rbx into rdi, they now point to the same section in memory

strlen:
	cmp byte [rax], 0
	jz  finished
	inc rax
	jmp strlen

finished:
        sub rax, rbx
	dec rax
	pop rbx ; rbx get its origin value
	ret

