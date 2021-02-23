global strlen

section .text
strlen:
    enter 0, 0          ; Create stack frame
    mov ebx,[ebp+8]     ; Get first argument which is the string
    mov ecx, 0          ; Initialize counter to 0

loop_strlen:
    cmp ebx, ebx        ; Check if current selected byte is zero
    jz end_strlen       ; If current byte is zero then jump to the end
    inc ebx             ; Increments the string pointer
    inc ecx             ; Increments the counter
    jmp loop_strlen     ; Jump back to the start of the loop

end_strlen:
    mov eax,ecx         ; Move the result of strlen into eax to properly 
    leave               ; Destroy the stack frame
    ret                 ; Return
