%include "io.inc"

; a*b + c 
; 16 7 12
;-23 -13 -15



section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    MOV     Al, 0x10    ;0xE9
    MOV     Bl, 0x7     ;0xF3
    MOV     Cl, 0xC     ;0xF1
    
    IMUL    Bl
    ADD     Al, Cl
    ret