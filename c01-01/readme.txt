The code originates at an offset of 100 in the memory to where the program header is stored. This is the DosBox Requirement.

; start of the code is a comment.

mox ax, 5: move integer 5 into the accumulator register ax.

mov bx, 10: mox bx, 10 move integer 10 into the base register bx.

add ax, bx: add values in ax, bx and store the result in ax

mox ax, 15: move integer 15 into the accumulator register ax.

add ax, bx: add values in ax, bx and store the result in ax

mov ax, 0x4c00: interrupt the current program and return to the operating system

int 0x21: interrup the program.

// mov ax, 0x4c00 
// int 0x21
This ensures that the program can't close itself, it has to get assistance from the operating system to close it.