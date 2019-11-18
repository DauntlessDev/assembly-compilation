.model small
.stack 50h

.data
NUM1 db ?
NUM2 db ?
quotient db ?
remainder db ? 
	MSG1 DB 10,13,"ENTER FIRST NUMBER TO DIVIDE : $"
	MSG2 DB 10,13,"ENTER SECOND NUMBER TO DIVIDE : $"
	MSG3 DB 10,13,"QUOTIENT IS : $"

.code
MOV AX,@DATA
MOV DS,AX
LEA DX,MSG1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
SUB AL,48
MOV NUM1,AL
             mov    bl, 00
              mov    al, 00
LEA DX,MSG2
MOV AH,9
INT 21H
MOV AH,1
INT 21H
SUB AL,48
MOV NUM2,AL
mov ah,0
DIV NUM1
 mov    Quotient, al
              mov    Remainder, ah
              mov    dl, Quotient
              add    dl, 48
              mov    ah, 02
              int    21h
              mov    dl, Remainder
              add    dl, 48
              mov    ah, 02
              int    21h
              mov    ah, 4ch
              int    21h
INT 21H
END