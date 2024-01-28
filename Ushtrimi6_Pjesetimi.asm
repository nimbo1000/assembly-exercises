
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov ax, 14
mov bl, 10
div bl

mov cl,ah

mov dl,al
add dl,30h

mov ah,2
int 21h

mov dl,cl
add dl,30h
int 21h

ret




