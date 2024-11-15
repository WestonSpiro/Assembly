Learning Assembly Language.

*All the code snippets provided have been tested in GUI Turbo Assembler 5.1*

General Purpose Registers:
16-Bit AX
32-Bit EAX (The E stands for extended) 
(^)These are known as the "Primary Accumulator" which is used for operations involving input/output and arithmetic

16-Bit BX
32-Bit EBX
(^)These are known as the "Base Register" which is used to hold index in addressing and can also be used in computation

16-Bit CX
32-Bit ECX
(^)These are known as the "Count Register" which is used to control loops and can also be used in computation

16-Bit DX
32-BIT EDX 
(^)These are known as the "Data Register" which is used for input/output operations.

Each register is broken into a lower and higher bit
AX consists of AH (Higher 8-bit) and AL (Lower 8-bit)

-----------------------------------------------------------------------------------------------------------------------

Segment Registers:
Segments are specific areas defined in an assembly program for containing data, code and stack.
The three main segments are

Code Segment (CS Register) - Contains all the instructions to be executed. A 16-bit code segment register stores the starting address of the code segment

Data Segment (DS Register) - Contains data, constants and work areas. A 16-bit data segment register store the starting address of the data segment

Stack Segment (SS Register) - Contains data and return address of procedures or subroutines. It is implemented as a 'stack' data structure. The stack segment
register stores the starting address of the stack.


Pointer Registers:
Instruction Pointer (IP 16-bit/EIP 32-bit) - Stores the offset address of the next instruction to be executed. IP in association with the CS register (as CS:IP)
gives the complete address of the current instruction in the code segment

Stack Pointer (SP 16-Bit/ESP 32-Bit) - Provides the offset value within the program stack. SP in association with the SS register (SS:SP) refers to the current
position of data or address within the program stack

Base Pointer (BP 16-Bit/EBP 32-Bit) - Mainly helps in referencing the paramter variables passed to a subroutine. The address in the SS register is combined with the 
offset in BP to get the locaiton of the parameter. BP can also be combined ith DI and SI as the base register for special addressing.


Index Registers:
Source Index (SI 16-Bit/ESI 32-Bit) - Used as the source index for string operations

Destination Index (DI 16-Bit/EDI 32-Bit) - Used as the destination index for string operations
