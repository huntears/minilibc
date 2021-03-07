global strncmp

; int strncmp(const char *s1, const char *s2, size_t n);
;             rdi,            rsi,            rdx
section .text
strcmp:
    xor rbx, rbx
    xor rax, rax
    xor rcx, rcx

.loop:
    mov cl, [rsi+rbx]
    mov al, [rdi+rbx]
    test cl, cl
    jz .end
    test al, al
    jz .end
    test rdx, rdx
    jz .end
    cmp cl, al
    jne .end
    inc rbx
    dec rdx
    jmp .loop

.end:
    sub rax, rcx
    ret