.model small
.stack
.data
.code

start:
; turn-off blinking attribute
    MOV     AX, 1003h       
    MOV     BL, 00
    INT     10h

MOV     AX, 0600h    ;AH = 06h (scroll up window)
    ; black (0)
    MOV     BH, 0Fh      ;0 (black) background, F (white) text
    MOV     CX, 0000h    ;upper line, left column
    MOV     DX, 004Fh    ;finishing line, right column
    INT     10h

;background color
mov ah, 07h 
mov bh, 135 ;color
mov ch, 00 ;starting height
mov cl, 00 ;starting length
mov dl, 79 ;end length
mov dh, 24 ;end height
int 10h

;blue colors
mov ah, 07h 
mov bh, 17
mov ch, 07
mov cl, 36
mov dl, 49
mov dh, 11
int 10h

mov ah, 07h 
mov bh, 17
mov ch, 12
mov cl, 34
mov dl, 38
mov dh, 12
int 10h

mov ah, 07h 
mov bh, 17
mov ch, 12
mov cl, 40
mov dl, 48
mov dh, 12
int 10h

mov ah, 07h 
mov bh, 17
mov ch, 13
mov cl, 34
mov dl, 34
mov dh, 13
int 10h

mov ah, 07h 
mov bh, 17
mov ch, 08
mov cl, 34
mov dl, 51
mov dh, 11
int 10h

;end of blue colors, start of moon

mov ah, 07h 
mov bh, 240
mov ch, 8
mov cl, 39
mov dl, 42
mov dh, 9
int 10h

;end of moon, start color skin
mov ah, 07h  
mov bh, 96
mov ch, 15
mov cl, 20
mov dl, 30
mov dh, 19
int 10h
;end of skin start of cape color
mov ah, 07h  
mov bh, 126
mov ch, 23
mov cl, 6
mov dl, 29
mov dh, 24
int 10h

;end of cape color start of  rain
mov ah, 07h  ;bat
mov bh, 125
mov ch, 00
mov cl, 33
mov dl, 33
mov dh, 00
int 10h

;super
mov ah, 07h  
mov bh, 64
mov ch, 23
mov cl, 69
mov dl, 79
mov dh, 24
int 10h 

mov ah, 07h 
mov bh, 125
mov ch, 22
mov cl, 34
mov dl, 34
mov dh, 22
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 14
mov cl, 34
mov dl, 34
mov dh, 14
int 10h


mov ah, 07h 
mov bh, 125
mov ch, 6
mov cl, 34
mov dl, 34
mov dh, 6
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 02
mov cl, 35
mov dl, 35
mov dh, 03
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 10
mov cl, 35
mov dl, 35
mov dh, 11
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 17
mov cl, 35
mov dl, 35
mov dh, 19
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 00
mov cl, 38
mov dl, 38
mov dh, 01
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 04
mov cl, 38
mov dl, 38
mov dh, 04
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 13
mov cl, 38
mov dl, 38
mov dh, 14
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 22
mov cl, 38
mov dl, 38
mov dh, 22
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 05
mov cl, 38
mov dl, 38
mov dh, 0
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 26
mov cl, 38
mov dl, 38
mov dh, 26
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 167
mov cl, 40
mov dl, 40
mov dh, 17
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 05
mov cl, 41
mov dl, 41
mov dh, 06
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 02
mov cl, 41
mov dl, 41
mov dh, 02
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 19
mov cl, 41
mov dl, 41
mov dh, 20
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 28
mov cl, 43
mov dl, 43
mov dh, 28
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 4
mov cl, 44
mov dl, 44
mov dh, 4
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 12
mov cl, 43
mov dl, 43
mov dh, 13
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 17
mov cl, 39
mov dl, 39
mov dh, 18
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 10
mov cl, 45
mov dl, 45
mov dh, 10
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 13
mov cl, 46
mov dl, 46
mov dh, 14
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 16
mov cl, 42
mov dl, 42
mov dh, 16
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 22
mov cl, 46
mov dl, 46
mov dh, 23
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 17
mov cl, 46
mov dl, 46
mov dh, 18
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 6
mov cl, 46
mov dl, 46
mov dh, 7
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 2
mov cl, 47
mov dl, 47
mov dh, 2
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 22
mov cl, 49
mov dl, 49
mov dh, 22
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 11
mov cl, 49
mov dl, 49
mov dh, 11
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 28
mov cl, 53
mov dl, 53
mov dh, 28
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 6
mov cl, 51
mov dl, 51
mov dh, 6
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 14
mov cl, 50
mov dl, 50
mov dh, 14
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 8
mov cl, 50
mov dl, 50
mov dh, 9
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 01
mov cl, 50
mov dl, 50
mov dh, 02
int 10h

mov ah, 07h 
mov bh, 125
mov ch, 17
mov cl, 50
mov dl, 50
mov dh, 18
int 10h

;end of rain, start of color super

mov ah, 07h  
mov bh, 96
mov ch, 9
mov cl, 52
mov dl, 65
mov dh, 20
int 10h 

mov ah, 07h  
mov bh, 96
mov ch, 18
mov cl, 52
mov dl, 79
mov dh, 22
int 10h 

mov ah, 07h  
mov bh, 96
mov ch, 23
mov cl, 64
mov dl, 66
mov dh, 23
int 10h 

mov ah, 07h  
mov bh, 96
mov ch, 24
mov cl, 65
mov dl, 65
mov dh, 24
int 10h 


;end superman color,start of batman

;nosepart
mov ah, 07h  
mov bh, 00
mov ch, 15
mov cl, 26
mov dl, 32
mov dh, 15
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 14
mov cl, 21
mov dl, 25
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 13
mov cl, 14
mov dl, 20
mov dh, 13
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 12
mov cl, 10
mov dl, 13
mov dh, 12
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 11
mov cl, 5
mov dl, 9
mov dh, 11
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 10
mov cl, 1
mov dl, 4
mov dh, 10
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 9
mov cl, 0
mov dl, 1
mov dh, 10
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 2
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 125
mov ch, 0
mov cl, 18
mov dl, 20
mov dh, 1
int 10h


mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 3
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 5
mov dh, 6
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 6
mov dh, 5
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 9
mov dh, 4
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 11
mov dh, 3
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 0
mov dl, 14
mov dh, 2
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 1
mov cl, 0
mov dl, 17
mov dh, 2
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 2
mov cl, 0
mov dl, 19
mov dh, 2
int 10h

;horizontal two upper nose-forehead

mov ah, 07h  
mov bh, 00
mov ch, 8
mov cl, 29
mov dl, 29
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 7
mov cl, 27
mov dl, 28
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 6
mov cl, 24
mov dl, 26
mov dh, 6
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 5
mov cl, 22
mov dl, 22
mov dh, 5
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 4
mov cl, 21
mov dl, 21
mov dh, 4
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 3
mov cl, 20
mov dl, 20
mov dh, 3
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 6
mov cl, 21
mov dl, 21
mov dh, 6
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 7
mov cl, 19
mov dl, 20
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 9
mov cl, 17
mov dl, 17
mov dh, 9
int 10h

;eyes
mov ah, 07h  
mov bh, 240
mov ch, 9
mov cl, 24
mov dl, 27
mov dh, 9
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 8
mov cl, 18
mov dl, 26
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 7
mov cl, 19
mov dl, 24
mov dh, 7
int 10h

;vertical one

mov ah, 07h  
mov bh, 00
mov ch, 9
mov cl, 30
mov dl, 30
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 10
mov cl, 33
mov dl, 33
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 6
mov cl, 32
mov dl, 32
mov dh, 9
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 4
mov cl, 31
mov dl, 31
mov dh, 5
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 3
mov cl, 30
mov dl, 30
mov dh, 3
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 2
mov cl, 29
mov dl, 29
mov dh, 2
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 1
mov cl, 28
mov dl, 28
mov dh, 1
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 25
mov dl, 27
mov dh, 0
int 10h

;vertical two

mov ah, 07h  
mov bh, 00
mov ch, 14
mov cl, 20
mov dl, 20
mov dh, 15
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 16
mov cl, 19
mov dl, 19
mov dh, 18
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 19
mov cl, 20
mov dl, 21
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 22
mov dl, 28
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 19
mov cl, 29
mov dl, 33
mov dh, 19
int 10h


;end of nose, jaw part
mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 33
mov dl, 33
mov dh, 22
int 10h


mov ah, 07h  
mov bh, 00
mov ch, 23
mov cl, 14
mov dl, 32
mov dh, 23
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 22
mov cl, 17
mov dl, 17
mov dh, 22
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 21
mov cl, 16
mov dl, 16
mov dh, 21
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 15
mov dl, 15
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 19
mov cl, 14
mov dl, 14
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 18
mov cl, 13
mov dl, 13
mov dh, 18
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 16
mov cl, 12
mov dl, 12
mov dh, 17
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 15
mov cl, 9
mov dl, 11
mov dh, 15
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 14
mov cl, 5
mov dl, 8
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 13
mov cl, 0
mov dl, 4
mov dh, 13
int 10h

;lower jaw

mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 0
mov dl, 5
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 21
mov cl, 6
mov dl, 11
mov dh, 21
int 10h


mov ah, 07h  
mov bh, 00
mov ch, 24
mov cl, 1
mov dl, 5
mov dh, 24
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 23
mov cl, 6
mov dl, 11
mov dh, 23
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 22
mov cl, 12
mov dl, 16
mov dh, 22
int 10h

;end of jaw, body part


mov ah, 07h  
mov bh, 00
mov ch, 24
mov cl, 15
mov dl, 26
mov dh, 24
int 10h

;skin part

mov ah, 07h  
mov bh, 00
mov ch, 15
mov cl, 31
mov dl, 31
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 24
mov cl, 29
mov dl, 29
mov dh, 24
int 10h
;teeth
mov ah, 07h  
mov bh, 240
mov ch, 17
mov cl, 25
mov dl, 31
mov dh, 17
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 17
mov cl, 24
mov dl, 24
mov dh, 17
int 10h
;end of skin ,start of superman


mov ah, 07h  
mov bh, 00
mov ch, 8
mov cl, 52
mov dl, 65
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 7
mov cl, 53
mov dl, 65
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 0
mov cl, 56
mov dl, 66
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 9
mov cl, 53
mov dl, 54
mov dh, 9
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 10
mov cl, 51
mov dl, 51
mov dh, 10
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 11
mov cl, 50
mov dl, 50
mov dh, 11
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 12
mov cl, 49
mov dl, 49
mov dh, 12
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 13
mov cl, 48
mov dl, 48
mov dh, 13
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 9
mov cl, 52
mov dl, 52
mov dh, 9
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 7
mov cl, 51
mov dl, 51
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 6
mov cl, 52
mov dl, 52
mov dh, 6
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 14
mov cl, 47
mov dl, 47
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 48
mov ch, 14
mov cl, 53
mov dl, 47
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 10
mov cl, 52
mov dl, 56
mov dh, 10
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 11
mov cl, 51
mov dl, 56
mov dh, 11
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 15
mov cl, 51
mov dl, 53
mov dh, 15
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 12
mov cl, 50
mov dl, 56
mov dh, 12
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 13
mov cl, 49
mov dl, 56
mov dh, 13
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 14
mov cl, 52
mov dl, 52
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 21
mov cl, 52
mov dl, 52
mov dh, 22
int 10h

mov ah, 07h 
mov bh, 00
mov ch, 20
mov cl, 53
mov dl, 53
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 23
mov cl, 53
mov dl, 58
mov dh, 23
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 22
mov cl, 59
mov dl, 64
mov dh, 22
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 21
mov cl, 65
mov dl, 68
mov dh, 21
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 69
mov dl, 70
mov dh, 20
int 10h

;neck super

mov ah, 07h  
mov bh, 00
mov ch, 20
mov cl, 69
mov dl, 70
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 23
mov cl, 63
mov dl, 63
mov dh, 23
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 24
mov cl, 64
mov dl, 64
mov dh, 24
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 24
mov cl, 66
mov dl, 69
mov dh, 24
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 23
mov cl, 67
mov dl, 75
mov dh, 23
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 22
mov cl, 75
mov dl, 79
mov dh, 22
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 17
mov cl, 78
mov dl, 79
mov dh, 18
int 10h 

mov ah, 07h  
mov bh, 00
mov ch, 21
mov cl, 79
mov dl, 79
mov dh, 21
int 10h 

;major black face
mov ah, 07h  
mov bh, 00
mov ch, 00
mov cl, 63
mov dl, 79
mov dh, 17
int 10h 

mov ah, 07h  
mov bh, 00
mov ch, 00
mov cl, 79
mov dl, 79
mov dh, 20
int 10h 

mov ah, 07h  
mov bh, 00
mov ch, 15
mov cl, 62
mov dl, 62
mov dh, 18
int 10h 

mov ah, 07h  
mov bh, 00
mov ch, 16
mov cl, 62
mov dl, 69
mov dh, 16
int 10h 

mov ah, 07h  
mov bh, 00
mov ch, 18
mov cl, 62
mov dl, 72
mov dh, 18
int 10h 

;hair

mov ah, 07h  
mov bh, 00
mov ch, 00
mov cl, 50
mov dl, 72
mov dh, 02
int 10h 

;teeth super
mov ah, 07h 
mov bh, 00
mov ch, 14
mov cl, 48
mov dl, 55
mov dh, 14
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 17
mov cl, 52
mov dl, 57
mov dh, 17
int 10h

;skin forehead

mov ah, 07h  
mov bh, 96
mov ch, 8
mov cl, 52
mov dl, 53
mov dh, 8
int 10h

mov ah, 07h  
mov bh, 96
mov ch, 7
mov cl, 54
mov dl, 55
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 03
mov cl, 55
mov dl, 57
mov dh, 04
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 7
mov cl, 53
mov dl, 53
mov dh, 7
int 10h


mov ah, 07h  
mov bh, 125
mov ch, 7
mov cl, 52
mov dl, 52
mov dh, 7
int 10h

mov ah, 07h  
mov bh, 125
mov ch, 7
mov cl, 52
mov dl, 52
mov dh, 7
int 10h


mov ah, 07h  
mov bh, 240
mov ch, 5
mov cl, 52
mov dl, 52
mov dh, 5
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 6
mov cl, 51
mov dl, 51
mov dh, 6
int 10h

mov ah, 07h  
mov bh, 240
mov ch, 3
mov cl, 53
mov dl, 53
mov dh, 4
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 5
mov cl, 56
mov dl, 56
mov dh, 6
int 10h


mov ah, 07h  
mov bh, 125
mov ch, 3
mov cl, 54
mov dl, 54
mov dh, 4
int 10h

mov ah, 07h  
mov bh, 125
mov ch, 5
mov cl, 53
mov dl, 53
mov dh, 6
int 10h


mov ah, 07h  
mov bh, 00
mov ch, 3
mov cl, 57
mov dl, 57
mov dh, 4
int 10h

mov ah, 07h  
mov bh, 96
mov ch, 19
mov cl, 57
mov dl, 69
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 20
mov cl, 52
mov dl, 52
mov dh, 20
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 20
mov cl, 52
mov dl, 52
mov dh, 20
int 10h

;hairline
mov ah, 07h  
mov bh, 135
mov ch, 03
mov cl, 78
mov dl, 78
mov dh, 04
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 02
mov cl, 77
mov dl, 77
mov dh, 02
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 01
mov cl, 76
mov dl, 76
mov dh, 01
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 00
mov cl, 75
mov dl, 75
mov dh, 00
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 00
mov cl, 72
mov dl, 72
mov dh, 00
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 01
mov cl, 73
mov dl, 73
mov dh, 01
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 02
mov cl, 74
mov dl, 74
mov dh, 02
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 03
mov cl, 75
mov dl, 75
mov dh, 03
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 01
mov cl, 50
mov dl, 50
mov dh, 01
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 02
mov cl, 52
mov dl, 52
mov dh, 02
int 10h

mov ah, 07h  
mov bh, 135
mov ch, 01
mov cl, 53
mov dl, 53
mov dh, 01
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 9
mov cl, 62
mov dl, 62
mov dh, 9
int 10h


mov ah, 07h  
mov bh, 00
mov ch, 18
mov cl, 61
mov dl, 61
mov dh, 18
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 19
mov cl, 63
mov dl, 63
mov dh, 19
int 10h

mov ah, 07h  
mov bh, 96
mov ch, 18
mov cl, 70
mov dl, 76
mov dh, 18
int 10h

mov ah, 07h  
mov bh, 96
mov ch, 17
mov cl, 67
mov dl, 75
mov dh, 17
int 10h

mov ah, 07h  
mov bh, 00
mov ch, 17
mov cl, 65
mov dl, 71
mov dh, 17
int 10h


;=======================END OF SUPERMAN VS BATMAN=====================


mov ah, 4ch
int 21h
end start