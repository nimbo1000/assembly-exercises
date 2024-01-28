org 100h

; add your code here
; 3 shkronjat e para sarit, 3 tjera jeshile, 3 kaltert, 3kuqe ,3t'zeze, 3 t'kaft
; 2 t'parat t'bardh, 2 t'kuqe, 2 t'zeze, 2 t'kaltert, 2 t'gjelbert 2 t'kaft
; 2 t'magenta 

; set video mode    
mov ax, 3     ; text mode 80x25, 16 colors, 8 pages (ah=0, al=3)
int 10h       ; do it!

; cancel blinking and enable all 16 colors:
mov ax, 1003h
mov bx, 0
int 10h

; set segment register:
mov     ax, 0b800h
mov     ds, ax

; print "hello world"
; first byte is ascii code, second byte is color code.

mov [02h], 'H'

mov [04h], 'e'

mov [06h], 'l'

mov [08h], 'l'

mov [0ah], 'o'

mov [0ch], ','

mov [0eh], 'W'
 
mov [10h], 'o'

mov [12h], 'r'

mov [14h], 'l'

mov [16h], 'd'

mov [18h], '!'

; color all characters:
mov cx, 12  ; number of characters.
mov di, 03h ; start from byte after 'h'

mov [di], 11111100b   ; white on yellow
add di, 2 ; skip over next ascii code in vga memory.    

mov [di], 11111100b   ; white on yellow
add di, 2     

mov [di], 01001100b   ; red on yellow
add di, 2   

mov [di], 01000010b   ; red on green
add di, 2    

mov [di], 00000010b   ; black on green
add di, 2   

mov [di], 00000010b   ; black on green
add di, 2     

mov [di], 00010001b   ; blue on blue
add di, 2 

mov [di], 00010001b   ; blue on blue
add di, 2

mov [di], 00100001b   ; green on blue
add di, 2
            
mov [di], 00100100b   ; green on red
add di, 2
           
           
mov [di], 01100100b   ; brown on red
add di, 2 

mov [di], 01100100b   ; brown on red
add di, 2

; wait for any key press:
mov ah, 0
int 16h

ret

gent DB