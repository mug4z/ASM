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
; Print END

; PrintLF BEGIN
printLF:
	call print
	push rax
	mov rax, 0AH ; Put the \n into rax
	push rax     ; push the linefeed onto the stack so we can get the address
                        ; given that we have a little-endian architecture, eax register bytes are stored in reverse order,
                        ; this corresponds to stack memory contents of 0Ah, 0h, 0h, 0h,
                        ; giving us a linefeed followed by a NULL terminating byte
	mov rax, rsp; get the address of \n to rax
	pop rax
	pop rax
	ret


; PrintLF END

; quit BEGIN
quit:
	mov rax, 60
	mov rdi, 1
	syscall
	ret
; quit END
