
DATA SEGMENT

    byte_array db 34,55,43,23,45
    res db 00H

DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE,DS: DATA

START:
    MOV AX, DATA
    MOV DS, AX

    MOV SI, offset byte_array
    MOV AL, [SI]
    MOV CX, 4
    INC SI

CHECK_LOOP:
    MOV BL, [SI]
    CMP AL, BL
    JAE SKIP_UPDATE
    MOV al, bl

SKIP_UPDATE:
    INC SI
    LOOP CHECK_LOOP

    MOV res, AL
    INT 21H
CODE ENDS
END START
