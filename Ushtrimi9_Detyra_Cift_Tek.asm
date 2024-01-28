
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

game:  mov dx, offset msg1
       mov ah, 9
       int 21h

       mov ah, 1 
       int 21h

       cmp al, '0'
       jb stop

       cmp al, '9'
       ja stop

       sub al, 30h
       mov bl, 2
       div bl
       
       cmp ah, 0
       ja eshte_tek
       mov dx, offset cift
       jmp print
eshte_tek: mov dx, offset tek
print: mov ah, 9
       int 21h
       jmp game  ; loop.


stop: ret  ; stop


msg1 db "jepeni nje numer ose nje karakter per te dale nga programi:  $"
cift db " eshte cift!", 0Dh,0Ah, "$"
tek db " eshte tek!" , 0Dh,0Ah, "$"