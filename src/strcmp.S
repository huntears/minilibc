global strcmp

; int strcmp(const char *s1, const char *s2);
;            rdi,            rsi
section .text
strcmp:
;    xor rbp, rbp
    xor rax, rax
;
;.loop:
;    mov cl, [rdi+rbp]
;    mov al, [rsi+rbp]
;    test cl, cl
;    jz .end
;    test al, al
;    jz .end
;    cmp cl, al
;    jne .end
;    inc rbp
;    jmp .loop
;
;.end:
;    sub eax, ecx
    ret