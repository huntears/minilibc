global strpbrk

; char *strpbrk(const char *s, const char *accept);
;               rdi,           rsi
section .text
strpbrk:
    mov rbx, -1
    xor rcx, rcx

.loop:
    inc rbx
    mov r8b, [rdi+rbx]
    test r8b, r8b
    jz .not_found
    xor r9, r9

.loop_check:
    mov r10b, [rsi+r9]
    test r10b, r10b
    jz .loop
    cmp r8b, r10b
    je .found
    inc r9
    jmp .loop_check

.found:
    mov rax, rdi
    add rax, rbx
    ret

.not_found:
    xor rax, rax
    ret