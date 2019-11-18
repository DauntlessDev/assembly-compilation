dosseg
.model small
.stack 100h
.data
A db ?
star db 'x'
msg db 'Enter a number: $'
.code
main proc
mov ax, @data
mov ds, ax

mov ah,9
lea dx, msg
int 21h

mov ah,1
int 21h
sub al, 30h
mov A, al

mov ah, 2
mov dl,0dh
int 21h
mov dl, 0AH
int 21h

mov ch, 0
mov cl,A
mov bl, 1

loop1:
mov cx, bx

loop2:
cmp bl,A
jg exit
mov ah,2
mov dl, star
int 21h
loop loop2

inc bl
mov ah,2
mov dl, 00h
int 21h
mov dl, 0Ah
int 21h

loop loop1
exit:
mov ah, 4ch
int 21h
main endp
end main