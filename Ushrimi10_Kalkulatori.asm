name "flags"

org 100h

; now a little game:
game:  mov dx, offset msg1
       mov ah, 9
       int 21h

       ; read character in al:
       mov ah, 1 
       int 21h

       cmp al, '0'
       jb stop

       cmp al, '9'
       ja stop
       
       mov numri_1,al
       sub numri_1,30h
       
       mov dx, offset msg3
       mov ah, 9
       int 21h

       ; read character in al:
       mov ah, 1 
       int 21h

       cmp al, '*'
       jb stop

       cmp al, '/'
       ja stop
       
       mov operatori, al
       
       mov dx, offset msg2
       mov ah, 9
       int 21h

       ; read character in al:
       mov ah, 1 
       int 21h

       cmp al, '0'
       jb stop

       cmp al, '9'
       ja stop
       
       mov numri_2,al
       sub numri_2,30h
       
       cmp operatori, '+'
       je mbledhja
       cmp operatori, '-'
       je zbritja
       cmp operatori, '*'
       je shumezimi
       cmp operatori, '/'
       je pjesetimi
       jne stop

mbledhja:
mov al,0
add al,numri_1
add al,numri_2

;shtypja
cmp al,9
ja dysh
add al,30h
mov ah,0Eh
int 10h
jmp game
dysh:
mov bl,10
mov ah,0
div bl
add al, 30h
mov bl,ah
mov ah,0Eh
int 10h
mov al, bl
add al,30h
mov ah,0Eh
int 10h
jmp game

zbritja:
mov al,numri_1
sub al,numri_2
cmp al,0
jl vogel
add al,30h
mov ah,0Eh
int 10h
jmp game

vogel:
mov cl, al
mov al, '-'
mov ah, 0Eh
int 10h
mov al,cl
neg al
add al,30h
mov ah,0Eh
int 10h
jmp game

shumezimi:
mov ah,0
add al,numri_1
mul numri_2

;shtypja
cmp al,9
ja dysh2
add al,30h
mov ah,0Eh
int 10h
jmp game
dysh2:
mov bl,10
mov ah,0
div bl
add al, 30h
mov bl,ah
mov ah,0Eh
int 10h
mov al, bl
add al,30h
mov ah,0Eh
int 10h
jmp game

pjesetimi:

mov ah,0
mov al,numri_1
div numri_2

add al,30h
mov cl,ah
mov ah,0Eh
int 10h
mov al,cl
add al,30h
mov ah,0Eh
int 10h
jmp game


stop: ret  ; stop


msg1 db "Jepeni numrin e pare: " , 0Dh,0Ah, "$"
msg2 db " ju lutem jepeni numrin e dyte" , 0Dh,0Ah, "$"
msg3 db " ju lutem jepeni operatorin: " , 0Dh,0Ah, "$"

numri_1 db ?
numri_2 db ?
operatori db ?


