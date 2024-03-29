; Filename: scas.nasm
; Author:	Zumhliansang lungler
; Date: July 1, 2019
; Purpose: string operations in 64 bit cpu

global _start
section .text

_start:
	; scasb/w/d/q
	; compare memory to register
	cld
	mov rax, 0x1234567890abcdef
	lea rdi, [var1]
	scasq
	
	lea rdi, [var2]
	scasq
	
	; cmpsb/w/d/q
	; Compare memory to memory
	
	cld
	lea rsi, [var1]
	lea rdi, [var3]
	cmpsq
	
	; exit the program gracefully
	mov rax, 0x3c
	mov rdi, 0
	syscall
 
section .data
	var1: dq 0x1234567890abcdef
	var2: dq 0xfedcba1234567890	
	var3: dq 0x1234567890abcdef

