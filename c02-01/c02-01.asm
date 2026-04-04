[org 0x0100]

; start of the code

firstline: mov ax, 5
secondline: mov bx, 10

add [firstline] + [secondline] ; This is wrong. Because you can't add memory address into memory address because there's only one Address Bus in Von Neumann Architecture that our Computer Architecture is made of.

mov ax, 0x4c00
int 0x21