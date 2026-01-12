
DATA SEGMENT
    num1 db 66H
    res dW 00H
DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE, DS: DATA
START:

    mov ax, DATA
    mov ds,ax
    
    mov cl, 00H
    mov al, num1
    mov bx, 3000H
    
    mov byte ptr [bx], 0033H
    add ax, [bx]
    jnc skip
    inc cl
skip:
    mov res, ax
    mov ax, 4C00H
    int 21H
CODE ENDS
END START

