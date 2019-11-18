.MODEL SMALL
.STACK 100H
.DATA    
	MSG1 DB '-------------------------WECLOME TO "PINOY KA BA?"----------------------------'3,10,'$'
	GUIDE1 DB '"Pinoy ka ba?" is a game where it asks you 10 questions about the Philipines',13,10,'$'
	GUIDE2 DB 'Rule: ! correct 1 point, to a total max point of 10 points',13,10,'$'
	START1 DB 13,10'GOODLUCK, PLEASE ENTER TO START: $'
	Q1 DB 13,10,13,10,'1. Who was the founder of the KKK?',13,10,'$'
	QA1 DB '   a)Andres Bonifacio  b)Jose Rizal  c) Confederate Army  d)Emilio Aguinaldo',13,10,'$' 
	Q2 DB 13,10,13,10,'2. Who was the founder of the La Liga Filipina?',13,10,'$'
	QA2 DB '   a)Andres Bonifacio  b)Jose Rizal  c)Mark Twain  d)Jose Cantu',13,10,'$'
	Q3 DB 13,10,13,10,'3. What is the national bird of the Philippines?',13,10,'$'
	QA3 DB '   a)Maya  b)Manok  c)Agila  d)Manok na Pula',13,10,'$'
	Q4 DB 13,10,13,10,'4. What is the national fruit of the Philippines?',13,10,'$'
	QA4 DB '   a)Buko  b)Manga  c)Ubas  d)Pinya',13,10,'$'
	Q5 DB 13,10,13,10,'5. What is the heart of Old Manila?',13,10,'$'
	QA5 DB '   a)Intramuros  b)Binondo  c)BGC  d)Makati',13,10,'$'
	Q6 DB 13,10,13,10,'6. Where did the name of the Philippines came from?',13,10,'$'
	QA6 DB '   a)King Philip I  b)Queen Elizabeth  c)King Philip II d)Miguel Lopez',13,10,'$'
	Q7 DB 13,10,13,10,'7. Who is the 1st President of the Philippines?',13,10,'$'
	QA7 DB '   a)Andres Bonifacio  b) Emilio Aguinaldo  c)Ferdinand Marcos	d)Corazon Aquino',13,10,'$'
	Q8 DB 13,10,13,10,'8. Which country did not try to colonize the Philippines?',13,10,'$'
	QA8 DB '   a)Spain  b)Britain  c)UK  d)Japan ',13,10,'$'
	Q9 DB 13,10,13,10,'9. Which Portuguese explorer discovered the Philippines?',13,10,'$'
	QA9 DB '   a)Ferdinand Magellan  b)Lapu-Lapu  c)Ferdinand Marcos  d)Bisugo',13,10,'$'
	Q10 DB 13,10,13,10,'10. What is the popular nickname of former senator and national hero Benigno Aquino Jr?',13,10,'$'
	QA10 DB '   a)Ninoy  b)Noynoy  c)Nonoy	d)Benjamin',13,10,'$'
	DONE DB 13,10,13,10,'''Congratulations, you have finished the quiz!!!',13,10,'$'
	POINTS DB 13,10,'CONGRATS THE QUIZ IS DONE, YOUR FINAL SCORE IS: $'
	TRY DB 13,10,13,10,'Press 1 to Re-attempt quiz or 0 to Exit and See the Answers.$' 
	MSG11 DB 13,10,'Correct Answers: 1.a 2.b 3.c 4.b 5.a 6.c 7.b 8.c 9.a 10.a$'
	
.CODE 
    MOV AX,@DATA
	MOV DS,AX
    
	LEA DX,MSG1
	MOV AH,9
	INT 21H

	LEA DX,GUIDE1
	MOV AH,9
	INT 21H
    
	LEA DX,GUIDE2
	MOV AH,9
	INT 21H
	
	START:
	MOV BL, 0  
	LEA DX,START1
	MOV AH,9
	INT 21H	
	MOV AH, 1
	INT 21H
	
	CMP AL, 0DH
	JE QSN1
	JNE START
	
	QSN1:
	LEA DX,Q1
	MOV AH,9
	INT 21H
	LEA DX,QA1
	MOV AH,9
	INT 21H
	CALL INPUT
	CMP AL, 'a'
	JE QSN2
    JNE QSNW2
	
	QSN2:
	INC BL
	CALL QN2 
	CALL INPUT
	CMP AL, 'b'
	JE QSN3
	JNE QSNW3
	
	QSNW2:
	CALL QN2 
	CALL INPUT
	CMP AL, 'b'
	JE QSN3 
	JNE QSNW3
	
	QSN3:
	INC BL
	CALL QN3 
	CALL INPUT
	CMP AL, 'c'
	JE QSN4
	JNE QSNW4
	
	QSNW3:
	CALL QN3
	CALL INPUT
	CMP AL, 'c'
	JE QSN4 
	JNE QSNW4
	
	QSN4:
	INC BL
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5
	JNE QSNW5
	
	QSNW4:
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5 
	JNE QSNW5
	
	QSN5:
	INC BL
	CALL QN5 
	CALL INPUT
	
	CMP AL, 'a'
	JE QSN6
	JNE QSNW6
	
	QSNW5:
	CALL QN5 
	CALL INPUT
	CMP AL, 'a'
	JE QSN6 
	JNE QSNW6
	
	QSN6:
	INC BL
	CALL QN6 
	CALL INPUT
	CMP AL, 'c'
	JE QSN7
	JNE QSNW7
	
	QSNW6:
	CALL QN6 
	CALL INPUT
	CMP AL, 'c'
	JE QSN7 
	JNE QSNW7
	
	QSN7:
	INC BL
	CALL QN7
	CALL INPUT
	CMP AL, 'b'
	JE QSN8
	JNE QSNW8
	
	QSNW7:
	CALL QN7 
	CALL INPUT
	CMP AL, 'b'
	JE QSN8 
	JNE QSNW8
	
	QSN8:
	INC BL
	CALL QN8 
	CALL INPUT
	CMP AL, 'c'
	JE QSN9
	JNE QSNW9
	
	QSNW8:
	CALL QN8 
	CALL INPUT
	CMP AL, 'c'
	JE QSN9 
	JNE QSNW9
	
	QSN9:
	INC BL
	CALL QN9 
	CALL INPUT
	CMP AL, 'a'
	JE QSN10
	JNE QSNW10
	
	QSNW9:
	CALL QN9 
	CALL INPUT
	CMP AL, 'a'
	JE QSN10 
	JNE QSNW10
	
	QSN10:
	INC BL
	CALL QN10 
	CALL INPUT
	CMP AL, 'a'
	JE EXIT
	JNE EXITW
	
	QSNW10:
	CALL QN10 
	CALL INPUT
	CMP AL, 'a'
	JE EXIT 
	JNE EXITW
	
	EXIT:
	INC BL
	LEA DX,POINTS
	MOV AH,9
	INT 21H
	ADD BL, 48
	CMP BL,57
	JG TEN
	MOV AH, 2
	MOV DL, BL
	INT 21H
	JMP EXIT1
	
	EXITW:
	LEA DX,POINTS
	MOV AH,9
	INT 21H
	
	ADD BL,48
	MOV AH,2
	MOV DL, BL
	INT 21H
	
	JMP EXIT1
	
	TEN:
	MOV AH,2
	MOV DL,"1"
	INT 21H  
	MOV DL,"0"
	INT 21H
	JMP EXIT1
    
    QN2:
    LEA DX,Q2
	MOV AH,9
	INT 21H
	
	LEA DX,QA2
	MOV AH,9
	INT 21H
	RET 
	
	QN3:
    LEA DX,Q3
	MOV AH,9
	INT 21H
	
	LEA DX,QA3
	MOV AH,9
	INT 21H
	RET
	
	QN4:
    LEA DX,Q4
	MOV AH,9
	INT 21H
	
	LEA DX,QA4
	MOV AH,9
	INT 21H
	RET
	
	QN5:
    LEA DX,Q5
	MOV AH,9
	INT 21H
	
	LEA DX,QA5
	MOV AH,9
	INT 21H
	RET 
	
	QN6:
    LEA DX,Q6
	MOV AH,9
	INT 21H
	
	LEA DX,QA6
	MOV AH,9
	INT 21H
	RET
	
	QN7:
    LEA DX,Q7
	MOV AH,9
	INT 21H
    
	LEA DX,QA7
	MOV AH,9
	INT 21H
	RET 
	
	QN8:
    LEA DX,Q8
	MOV AH,9
	INT 21H
    
	LEA DX,QA8
	MOV AH,9
	INT 21H
	RET  
	
	QN9:
    LEA DX,Q9
	MOV AH,9
	INT 21H
    
	LEA DX,QA9
	MOV AH,9
	INT 21H
	RET 
	
	QN10:
    LEA DX,Q10
	MOV AH,9
	INT 21H
	
	LEA DX,QA10
	MOV AH,9
	INT 21H
	RET  
	
	INPUT:
	MOV AH, 1
	INT 21H
	RET
	
	EXIT1: 
	LEA DX,TRY
	MOV AH,9
	INT 21H
	
	MOV AH,1
	INT 21H
	
	CMP AL,'1'
	JMP START 
	
	LEA DX,MSG11
	MOV AH,9
	INT 21H
	
	MOV AH, 4CH
	INT 21H
END 
