SECTION .text 
global _start

loop_start:
	add rcx, 1
	cmp rcx, 5
	jne loop_start
	jmp end
end:
	mov rax, 60
	mov rdi, rcx
	syscall

_start:
	mov rcx, 0
	call loop_start

