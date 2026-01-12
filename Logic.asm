ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    AL1 DB 11H
    BL1 DB 22H
    CL1 DB 33H
    DL1 DB 44H
    NUM1 DB 0AAH
    NUM2 DB 0CCH
    RESULT DB 00H
DATA ENDS

; You should define a size for your stack
STACK_SEG SEGMENT STACK
    DB 64 DUP(?)
STACK_SEG ENDS

CODE SEGMENT
    ORG 2000H
START:             ; <--- Added Entry Point Label
    MOV AX, DATA
    MOV DS, AX
    
    LEA SI, NUM1
    NOT BYTE PTR [SI]
    MOV AH, [SI]
    
    LEA DI, NUM2
    AND AH, [DI]
    
    LEA SI, CL1
    MOV CL, [SI]
    LEA SI, BL1
    NOT BYTE PTR [SI]
    XOR CL, [SI]

    LEA SI, AL1
    MOV AL, [SI]
    OR AL, AH
    LEA SI, DL1
    MOV DL, [SI]
    NOT DL
    OR AL, DL

    LEA SI, RESULT
    MOV [SI], AL
    
    ; Proper Termination
    MOV AH, 4CH    ; <--- Function to exit to DOS
    INT 21H        
CODE ENDS
    END START      ; <--- Tell Assembler to start at the label 'START'