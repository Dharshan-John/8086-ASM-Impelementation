
DATA SEGMENT
    num1 db 44H
    num2 db 22H
    res db 00H
DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
START:
    mov ax, DATA
    mov ds, ax

    mov al, num1
    sub al, num2
    mov res, al

    mov ah, 4CH
    int 21H
CODE ENDS
END START