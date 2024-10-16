.MODEL SMALL; Model is an Assembler directive that defines the memory model to use in the program.
;Small means that by default all code is placed in one segment and all data declared in the data segment is also placed in one segment.

.STACK; Stack is an Assembler directive that reserves a memory space for program instructions in the stack.

.DATA; Indicates that the data segment starts here and that the stack segment ends there.
;This directive is where we declare and/or assign value to a storage similar to variable declaration and definition in high-level language.

.CODE; This is an Assembler directive that defines the program instructions. This directive starts the body of the program.

MAIN:
    MOV AH,09; Print one character
;MOV is shorthand for the word Move. MOV requires two operands separated by a comma. MOV does not really move the value from source to destination,
;instead it copies the value of the source to the destination.
;AH is the most significant byte of the AX register. AX is the primary accumulator; it is used in input/output and most arithmetic instructions. 
;For example, in multiplication operation, one operand is stored in EAX or AX or AL register according to the size of the operand.

    MOV AL, 'X'; Write the character to display. AL is the least-significant byte of the 16-bit AX (accumulator) register.
	
    MOV BH, 00; Page number 00. BH is the most significant byte of the BX register. 
;BX is known as the base register, as it could be used in indexed addressing.

    MOV BL, 14H; Color attribute in RGB. BL is the least-significant byte of the 16-bit BX register.
;BX is known as the base register, as it could be used in indexed addressing.

    MOV CX, 10; Number of time sthe character is to be displayed.
;CX is known as the Count Register which is used to control loops and can also be used in computation.

    INT 10H; Calls video services
;INT stand for interrupt. INT is an assembly language instruction for x86 processors that generates a software interrupt.

    MOV AH, 4CH; This instruction terminates the program 
	
    INT 21H; This instruction calls the DOS service, hence the program returns to dos.
	
END MAIN; This instruction ends the program.