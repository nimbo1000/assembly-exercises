
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov ax, 5467h
mov di, 720h   
mov cl, gent[0]
mov [di], cl


ret

gent DB "A JENI LODH O BURRA"     ;prej 0-255 (define byte), vetem 1 byte ose vetem 1 karakter ne ascii kod
genti DW 768  ; 0-65535 - 16bit