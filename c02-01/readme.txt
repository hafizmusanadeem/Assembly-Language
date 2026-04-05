c02-01.asm:

---
org[0x0100]: makes the program originate at an offset of 100 where the program is loaded.

; start of the code : is a comment

firstline is just a name assigned to that memory address where our current instruction is loaded for the ax register.

secondline is just a name assigned to that memory address where our current instruction is loaded for the bx register.

Error: We're trying to compute memory + memory that needs 2 adresses, but because of only 1 bus address we can't do that. So this will throw an error.

mov ax, 0x4c00
int 0x21

will terminate the program
---



c02-02.asm:
---

Code Segment:
c02-02:
[org 0x0100]: This means that our code will originate at an offset of 100 from code segment(the address where programs is loaded is in code segment).

; start of the code is a comment

mov ax, [num1]
mov bx, [num1+1]

add ax, bx

mov ax, 0x4c00
int 0x21

Data Segment:
num1: db 5,10,15,0

Definitions:
Data Segment: Where the data is stored that is being used in the code.
Code Segment: Where the code is stored of a running program

Data Segment and Code Segment are just comments added for better readability of the code.



Error in the code:
The whole register ax (2 bytes) is being used while the data segment is using a byte.

Because we're using ax, the register will store 16 bits (2 bytes) into memory.

But problem is that we're defining 1 byte only by the keyword "db" and the register is storing 2 bytes, so it will store the next value as well in the accumulator register.


Solution:

dw should have used to define the values when the value needed to be stored in the ax register.

db should have used to define the value when part of the accumulator register is defined. "al" or "ah" where al stands for accumulator lower and ah stands for accumulator higher.
---
