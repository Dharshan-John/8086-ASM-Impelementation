
DATA SEGMENT
    res dw 0000H
DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE, DS: DATA

START:

    mov cl, 00H
    mov bx, 2000H
    mov [bx], 1894H
    mov ax, 1000H

    add ax, [bx]
    jmp skip
    inc cl
skip:
    mov res, ax
    mov ax, 4C00H
    int 21H
CODE ENDS
END START