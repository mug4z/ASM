; Strlen BEGIN
strlen:
	push rbx ; example of PUSH
	mov rbx, rax ; Move the address in rbx into rdi, they now point to the same section in memory

characCount:
	cmp byte [rax], 0
	jz  finished
	inc rax
	jmp characCount

finished:
        sub rax, rbx
	pop rbx ; rbx get its origin value
	ret
; Strlen END

; Print BEGIN
print:
	push rdi
	push rsi
	push rdx

	mov rsi, rax
	call strlen
	mov rdx,rax
	mov rax, 1
	mov rdi, 1
	syscall

	pop rdx
	pop rsi
	pop rdi
	ret

quit:
	mov rax, 60
	mov rdi, 1
	syscall
	ret
; Print END
