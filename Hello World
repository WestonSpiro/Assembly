.MODEL SMALL
.STACK

.DATA ;Variables must be declared in Data segment
    strMsg1 DB "Hello World!$",; Variable type declared in Data segment
.CODE ;Code Segment
MAIN:
;Initialize Seg & Off for string display (Start)
	MOV AX,@data; Initialize DS&ES (Segment & Offset)
	MOV DS,AX
	MOV ES,AX 
;Initialize Seg & Off for string display (End)

;Display string from a variable (Start)
	MOV AH,09H; Request display string
	LEA DX,strMsg1; Load effective address of the string (both segment & offset)
	INT 21H; Return to DOS
;Display string from a variable (End)

	MOV AH,4CH
	INT 21H
END MAIN
