; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov koef[6], 65 ; mbishkrun variablen e ardhshme 
; ne qofse shkruhet ne fund te variables paraprake
mov al, tel

ret

; add your variables here

koef DB 'm=0,05'
tel DB 5
