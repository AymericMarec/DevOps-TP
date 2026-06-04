section .data
    nb dw 12
    reste dw 0
    quotient dw 0
    ten db 10
    buffer db 0

section .text
    global _start

_start:
    mov rax, [nb]
    mov rbx, 0
    div rbx

    mov [quotient], eax 
    mov [reste], edx

    ;write
    mov rax, 1      ;syscall write
    mov rdi, 1      ;stdout
    mov buffer, [quotient]
    add buffer, 48
    mov rsi, buffer
    mov rdx, 1
    syscall


    mov	eax,1 
    int	0x80 