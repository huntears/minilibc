global strlen

; int strlen(const char *s1);
;            rdi
section .text
strlen:
    xor rax, rax

.loop:
    mov bl, [rdi + rax]
    inc rax
    test bl, bl
    jnz .loop

.end:
    dec rax
    ret
