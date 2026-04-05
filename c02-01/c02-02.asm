; Code Segment:
[org 0x0100]

; start of the code
mov ax, [num1]
mov bx, [num1+1]

add ax, bx


mov ax, 0x4c00
int 0x21


; Data Segment:
num1: db 5,10,15,0