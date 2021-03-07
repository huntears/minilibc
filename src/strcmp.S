global strcmp

; int strcmp(const char *s1, const char *s2);
;            rdi,            rsi
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
    cmp cl, al
    jne .end
    inc rbx
    jmp .loop

.end:
    sub rax, rcx
    ret