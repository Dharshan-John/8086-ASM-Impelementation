
DATA SEGMENT
    res dw 0000H
DATA ENDS

CODE SEGMENT
    ASSUME CS: CODE, DS: DATA

START:
    mov ax, DATA
    mov ds, ax

    ; Immediate Addressing Mode
    mov ax, 0000H    
    mov bx, 2000H       

    mov word ptr [bx], 0001H   ; 
    mov cx, 10

LOOP_START:
    add ax, [bx]         ; Register Indirect Addressing Mode
    inc byte ptr [bx]
    LOOP LOOP_START

    mov res, ax          
    mov ax, 4C00H
    int 21H
CODE ENDS
END START
