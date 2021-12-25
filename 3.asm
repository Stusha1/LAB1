%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor     eax, eax
    XOR     EDX, EDX
    MOV     AX, 23
    MOV     BX, 13
    MOV     CX, 15
    
    CMP     AX, 0
    JL      no
    CMP     BX, 0
    JL      no
    CMP     CX, 0
    JL      no
    
    
    
    
    
    ADD     DX, AX
    ADD     DX, BX
    CMP     DX, CX
    JA      s2           
    JMP     no
    
s2:
    XOR     EDX, EDX
    ADD     DX, AX
    ADD     DX, CX
    CMP     DX, BX 
    JA      s3 
    JMP     no

s3: 
    XOR     EDX, EDX
    ADD     DX, CX
    ADD     DX, BX
    CMP     DX, AX
    JA      yes
    JMP     no



no:
    XOR     EDX, EDX
    MOV     EDX, 1
    JMP     quit

yes: 
    XOR     EDX, EDX
    JMP     quit
    
quit:    
    RET  