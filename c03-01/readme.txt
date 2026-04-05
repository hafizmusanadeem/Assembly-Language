[org 0x0100]: used to originate the program at an offset of 100 where the code segment is loaded.


; Everything starting with the symbol ";" is considered a comment

xor ax, ax : is used to reset the accumulator register. Accumulator register is reset first because there could be some value before we're trying to use the register so we need to remove that first and set the register 0.

mov ax, num1: move into ax whatever is written in num1. In this case, the integer number 5 will be loaded into register.

mov cx, 3: cx is a counter regiser used in loops to set the value of the loop so it can run multiple times. The value set in cx register will run the loop for those iterations.

outerloop: is an alias defined for the address where our loop is starting. Here, it's the address of the instruction add ax, [bx]

add ax, [bx]: add into ax whatever is present at the address stored in the bx register. This is indirect addressing.

add bx, 2: Increase the bx register by 2, meaning that bx will now store +2 address of the bx.
example: if bx was pointing at 100 in the memory before, now it will point at 102

sub cx, 1: It is to decrement the value in the cx register after our looped out instructions are executed successfully.
example: This is similar to what we do in a basic c++ loop (for int i=3; i>0; i--).
Here, we're doing cx-- ( Decrementing one value from cx register)

jnz: "if zero flag not set then jump" ( Set:0, NotSet:1 ~ In easy words, if zero flag is holding the value 0 then it is called zero flag is set, if zero flag is not equal to 0 then it will be definitely equal to 1 then it will be called that zero flag is not set.)
jnz outerloop: Just like we've registers in the CPU, similarly we've flags. There's a flag in the CPU architecture called Zero Flag.
Zero Flag: It's to check  if the previous instructions that run in the assembly language produced 0 or not. 
example: xor ax,ax will produce 0 because xor is a logical operation that produces 0 when performed between two similar values. Then the zero flag will be set.

Here, the loop will start running and on each run the cx register will be decremented. Each time this flag will be checked if it produced 0 or not.
jnz outerloop: if zero flag not set then jump then jump to the address of the outerloop (re-run the looped instructions)

Note: Zeroflag is only set or notset in logical or arithmetic operations. It doesn't Set/NotSet in case of mov operations.

mov ax, 0x4c00: 4c00 is the exit code defined by Intel architecture. ax regsiter holds the 4c00.
int 0x21: means to interrupt the program.
The program stops due to int 0x21 and this instructions goes to operating system > Interrupt Handler. Then the Interrup Handler checks the accumulator regsiter which holds 4c00(exit code), so the operating system exits the program.