global strlen

; This is cool
; https://www.aldeid.com/wiki/X86-assembly/Instructions/repne
section .text
strlen:
    mov rcx, -1         ; Put rcx to -1 to prepare for repne, since it increments then test
    xor eax, eax        ; Put eax to 0, so it repne tests for null bytes
    repne scasb         ; Scan the string for a null byte, result is stored in rcx
    dec rcx             ; Decrease the result because repne counts the null byte
    mov rax, rcx        ; Move the result into rax for 
    ret                 ; Return