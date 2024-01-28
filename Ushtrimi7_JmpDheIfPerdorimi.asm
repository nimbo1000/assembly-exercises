
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

mov al,6
mov bl,7
cmp al,bl
jg me_madhe
jl me_vogel
je brbart

me_vogel:

jmp stop ; jmp=jump,perdoret per mos me hi ne labelat tjera

me_madhe:

brbart:

stop:

ret




