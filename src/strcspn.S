global strcspn

; size_t strcspn(const char *s, const char *reject);
;                rdi,           rsi
section .text
strcspn:
    xor rax, rax
    xor rbx, rbx

.loop:
    cmp BYTE [rdi+rax], 0
    je .end

.test_reject:
    cmp BYTE [rsi+rbx], 0
    je .end_reject
    mov r8b, [rsi+rbx]
    cmp r8b, [rdi+rax]
    je .end
    inc rbx
    jmp .test_reject

.end_reject:
    xor rbx, rbx
    inc rax
    jmp .loop

.end:
    ret