org[0x0100]: makes the program originate at an offset of 100 where the program is loaded.

; start of the code : is a comment

firstline is just a name assigned to that memory address where our current instruction is loaded for the ax register.

secondline is just a name assigned to that memory address where our current instruction is loaded for the bx register.

Error: We're trying to compute memory + memory that needs 2 adresses, but because of only 1 bus address we can't do that. So this will throw an error.

mov ax, 0x4c00
int 0x21

will terminate the program