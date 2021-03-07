global strcasecmp

; int strcasecmp(const char *s1, const char *s2);
;                rdi,            rsi
section .text
strcasecmp:
    xor rbx, rbx
    xor eax, eax

.loop:
    mov cl, [rsi+rbx]
    mov al, [rdi+rbx]
    test cl, cl
    jz .end
    test al, al
    jz .end
    jmp .test_case_lower

.next_loop:
    cmp cl, al
    jne .end
.next_loop_check_passed:
    inc rbx
    jmp .loop

.test_case_lower:
    cmp cl, 0x61
    jl .test_case_upper
    cmp cl, 0x7A
    jg .next_loop
    sub cl, 0x20
    cmp cl, al
    je .next_loop_check_passed
    add cl, 0x20
    jmp .next_loop

.test_case_upper:
    cmp cl, 0x41
    jl .next_loop
    cmp cl, 0x5A
    jg .next_loop
    add cl, 0x20
    cmp cl, al
    je .next_loop_check_passed
    sub cl, 0x20
    jmp .next_loop

.end:
    sub eax, ecx
    ret