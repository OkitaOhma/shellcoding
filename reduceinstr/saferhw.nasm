global _start
section .text
_start:
	; print on screen
	xor rax, rax
	mov al, 1
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, length
	syscall

	; exit gracefully


	mov rax, 60
	mov rdi, 11
	syscall
	
section .data
	hello_world: db 'Hell world this is the SLAE-64 course', 0xa
	length: equ $-hello_world


