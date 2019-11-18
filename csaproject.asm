.MODEL SMALL
.STACK 100H
.DATA    
	MSG1 DB '-------------------------WECLOME TO "PINOY KA BA?"----------------------------$'
	GUIDE1 DB '"Pinoy ka ba?" is a game where it asks you 10 questions about the culture of the Philipines$'
	GUIDE2 DB 'Rule: The final points will be calculated by right minus wrong and the max score is 10$'
	START1 DB 'GOODLUCK, PLEASE ENTER TO START: $'
	Q1 DB '1. Who was the founder of the KKK?$'
	QA1 DB '   a)Andres Bonifacio  b)Jose Rizal  c) Confederate Army  d)Emilio Aguinaldo$'  
	Q2 DB '2. Who was the founder of the La Liga Filipina?$'
	QA2 DB '   a)Andres Bonifacio  b)Jose Rizal  c)Mark Twain  d)Jose Cantu$'
	Q3 DB '3. What is the national bird of the Philippines$'
	QA3 DB '   a)Maya  b)Manok  c)Agila  d)Manok na Pula$'
	Q4 DB '4. What is the national fruit of the Philippines$'
	QA4 DB '   a)Buko  b)Manga  c)Ubas  d)Pinya$'
	Q5 DB '5. What is the heart of Old Manila?$'
	QA5 DB '   a)Intramuros  b)Binondo  c)BGC  d)Makati$'
	Q6 DB '6. Where did the name of the Philippines came from?$'
	QA6 DB '   a)King Philip I  b)Queen Elizabeth  c)King Philip II d)Miguel Lopez$'
	Q7 DB '7. Who is the 1st President of the Philippines$'
	QA7 DB '   a)Andres Bonifacio  b) Emilio Aguinaldo  c)Ferdinand Marcos	d)Corazon Aquino$'
	Q8 DB '8. Which country did not try to colonize the Philippines$'
	QA8 DB '   a)Spain  b)Britain  c)UK  d)Japan $'
	Q9 DB '9. Which Portuguese explorer discovered the Philippines$'
	QA9 DB '   a)Ferdinand Magellan  b)Lapu-Lapu  c)Ferdinand Marcos  d)Bisugo$'
	Q10 DB '10. What is the popular nickname of former senator and national hero Benigno Aquino Jr$'
	QA10 DB '   a)Ninoy  b)Noynoy  c)Nonoy	d)Benjamin$'
	DONE DB 'Congratulations, you have finished the quiz!!!$'
	POINTS DB 'CONGRATS THE QUIZ IS DONE, YOUR FINAL SCORE IS: $'
	TRY DB 'Press 1 to Re-attempt quiz or 0 to Exit and See the Answers.$' 
	MSG11 DB 'Correct Answers: 1.a 2.b 3.c 4.b 5.a 6.c 7.b 8.c 9.a 10.a$'
	
.CODE 
    MOV AX,@DATA
	MOV DS,AX
    
	LEA DX,MSG1
	MOV AH,9
	INT 21H
    
	CALL NL

	LEA DX,GUIDE1
	MOV AH,9
	INT 21H
    
    CALL NL
    
	LEA DX,GUIDE2
	MOV AH,9
	INT 21H
	
	START:
	MOV BL, 0  
    CALL NL
	LEA DX,START1
	MOV AH,9
	INT 21H	
	MOV AH, 1
	INT 21H
	
	CMP AL, 0DH
	JE QSN1
	JNE START
	
	QSN1:
	CALL NL
    
	LEA DX,Q1
	MOV AH,9
	INT 21H
	CALL NL
	LEA DX,QA1
	MOV AH,9
	INT 21H
	
	CALL NL
    
	MOV AH, 1
	INT 21H
	CMP AL, 'a'
	JE QSN2
    JNE QSNW2
	
	QSN2:
	CALL NL
	INC BL
	CALL NL
	CALL QN2 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN3
	JNE QSNW3
	
	QSNW2:
	CALL NL
	DEC BL
	CALL NL
    
	CALL QN2 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN3 
	JNE QSNW3
	
	QSN3:
	CALL NL
	INC BL
	CALL NL    
	CALL QN3 
	CALL INPUT
	
	CMP AL, 'c'
	JE QSN4
	JNE QSNW4
	
	QSNW3:
	CALL NL
	DEC BL
	CALL NL
    
	CALL QN3
	CALL INPUT
	
	CMP AL, 'c'
	JE QSN4 
	JNE QSNW4
	
	QSN4:
	CALL NL
	
	INC BL
	CALL NL
    
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5
	JNE QSNW5
	
	QSNW4:
	CALL NL
	
	DEC BL
	CALL NL
	CALL QN4 
	CALL INPUT
	
	CMP AL, 'b'
	JE QSN5 
	JNE QSNW5
	
	QSN5:
	CALL NL
	INC BL
	CALL NL
	CALL QN5 
	CALL INPUT
	
	CMP AL, 'a'
	JE QSN6
	JNE QSNW6
	
	QSNW5:
	CALL NL
	DEC BL
	CALL NL
	CALL QN5 
	CALL INPUT
	CMP AL, 'a'
	JE QSN6 
	JNE QSNW6
	
	QSN6:
	CALL NL
	INC BL
	CALL NL
	CALL QN6 
	CALL INPUT
	CMP AL, 'c'
	JE QSN7
	JNE QSNW7
	
	QSNW6:
	CALL NL
	DEC BL
	CALL NL
	CALL QN6 
	CALL INPUT
	CMP AL, 'c'
	JE QSN7 
	JNE QSNW7
	
	QSN7:
	CALL NL
	INC BL
	CALL NL
	CALL QN7
	CALL INPUT
	CMP AL, 'b'
	JE QSN8
	JNE QSNW8
	
	QSNW7:
	CALL NL
	DEC BL
	CALL NL
	CALL QN7 
	CALL INPUT
	CMP AL, 'b'
	JE QSN8 
	JNE QSNW8
	
	QSN8:
	CALL NL
	INC BL
	CALL NL
	CALL QN8 
	CALL INPUT
	CMP AL, 'c'
	JE QSN9
	JNE QSNW9
	
	QSNW8:
	CALL NL
	DEC BL
	CALL NL
	CALL QN8 
	CALL INPUT
	CMP AL, 'c'
	JE QSN9 
	JNE QSNW9
	
	QSN9:
	CALL NL
	INC BL
	CALL NL
	CALL QN9 
	CALL INPUT
	CMP AL, 'a'
	JE QSN10
	JNE QSNW10
	
	QSNW9:
	CALL NL
	DEC BL
	CALL NL
	CALL QN9 
	CALL INPUT
	CMP AL, 'a'
	JE QSN10 
	JNE QSNW10
	
	QSN10:
	CALL NL
	INC BL
	CALL NL
	CALL QN10 
	CALL INPUT
	CMP AL, 'a'
	JE EXIT
	JNE EXITW
	
	QSNW10:
	CALL NL
	DEC BL
	CALL NL
	CALL QN10 
	CALL INPUT
	CMP AL, 'a'
	JE EXIT 
	JNE EXITW
	
	EXIT:
	CALL NL 
	INC BL
	CALL NL
	CALL NL
	CALL NL
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
	CALL NL
	DEC BL
	CALL NL
	CALL NL  
	CALL NL
    CALL NL
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
	
	NL: 
	MOV AH,2
	MOV DL, 0AH
	INT 21H   
    MOV DL, 0DH
    INT 21H
    RET 
    
    QN2:
    LEA DX,Q2
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA2
	MOV AH,9
	INT 21H
	RET 
	
	QN3:
    LEA DX,Q3
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA3
	MOV AH,9
	INT 21H
	RET
	
	QN4:
    LEA DX,Q4
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA4
	MOV AH,9
	INT 21H
	RET
	
	QN5:
    LEA DX,Q5
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA5
	MOV AH,9
	INT 21H
	RET 
	
	QN6:
    LEA DX,Q6
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA6
	MOV AH,9
	INT 21H
	RET
	
	QN7:
    LEA DX,Q7
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA7
	MOV AH,9
	INT 21H
	RET 
	
	QN8:
    LEA DX,Q8
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA8
	MOV AH,9
	INT 21H
	RET  
	
	QN9:
    LEA DX,Q9
	MOV AH,9
	INT 21H
	
	CALL NL
    
	LEA DX,QA9
	MOV AH,9
	INT 21H
	RET 
	
	QN10:
    LEA DX,Q10
	MOV AH,9
	INT 21H
	
	CALL NL
	LEA DX,QA10
	MOV AH,9
	INT 21H
	RET  
	
	INPUT:
	CALL NL
	MOV AH, 1
	INT 21H
	RET
	
	EXIT1: 
	CALL NL 
	CALL NL
	LEA DX,TRY
	MOV AH,9
	INT 21H
	
	MOV AH,1
	INT 21H
	
	CMP AL,'1'
	JMP START 
	CALL NL
	CALL NL
	
	LEA DX,MSG11
	MOV AH,9
	INT 21H
	
	MOV AH, 4CH
	INT 21H
END 
