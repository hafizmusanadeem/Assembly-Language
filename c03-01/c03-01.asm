[org 0x0100]

; start of the code

xor ax, ax      ; reset the accumulator register
mov cx,3        ; set the iterator count
mov bx,num1     ; set the base

mov bx,num1

outerloop:
    add ax, [bx]
    add bx, 2

    sub cx, 1
    jnz outerloop

mov ax, 0x4c00
int 0x21

; Data Segment:

num1: dw 5, 10, 15, 0