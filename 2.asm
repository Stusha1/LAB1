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
    FLD     DWORD [c]
    FLD     DWORD [a]
    FLD     DWORD [b]

    FMUL
    FADD
  
    FST     DWORD [r]
   
    RET
   
   
section .data

a: DD 0xC1B80000    ;0x41800000 
b: DD 0xC1500000    ;0x40e00000
c: DD 0xC1700000    ;0x41400000
r: DD 0x00000000