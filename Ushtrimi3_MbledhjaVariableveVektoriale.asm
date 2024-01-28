
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; 3 vektore 2 vektoret e pare shuma te ruhet ne vektorin e 3

org 100h

; add your code here   
mov di, 0
mov cx, 5 ; numratori per loop, ose sikur i-ja te for loop ne c#
; zvogelohet secilen her kur t'kryhet nje loop
c:
mov al, vektA[di]
mov bl, vektB[di]
add bl, al
mov vektC[di], bl
add di, 1
loop c


ret

vektA DB 4,5,3,2,1
vektB DB 11,32,45,11,3
vektC DB 0,0,0,0,0
