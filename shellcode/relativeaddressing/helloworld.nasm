global _start
section .text

_start:
    jmp real_start 
    hello_world: db 'Hello friend', 0xa

real_start:
    
    ; print on screen
    xor rax, rax
	add rax, 1
    mov rdi, rax
	lea rsi, [rel hello_world]
    xor rdx, rdx
    add rdx, 14
    syscall
	
    xor rax, rax
    add rax, 60
    xor rdi, rdi
    syscall
    
