
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov ah,0eh   ; AH PER OUTPUT - COUT
mov cx, 37
mov di, 0
c:
mov al, vekt[di]
int 10h
inc di
loop c

mov ah, 01h   ; AH PER INPUT- CIN
int 21h

ret

vekt DB 'A JENI LODH O BURRA DHE GRA FISNIKE: '