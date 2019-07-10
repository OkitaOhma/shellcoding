global _start
section .text

_start:
	MOV RCX, 20
	
PrintHW:
	push rcx
	; PRINT ON SCREEN
	MOV RAX, 1
	MOV RDI, 1
	MOV RSI, message
	MOV RDX, mlen
	syscall
	
	pop rcx

	loop	PrintHW
	
	; exit gracefully
	
	MOV RAX, 60
	MOV RDI, 11
	syscall

section .data
	message: db "Hello World!", 0x0a
	mlen	equ $-message
