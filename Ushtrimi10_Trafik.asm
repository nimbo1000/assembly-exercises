; controlling external device with 8086 microprocessor.
; realistic test for c:\emu8086\devices\Traffic_Lights.exe

#start=Traffic_Lights.exe#

name "traffic"


mov ax, all_red
out 4, ax


mov si, offset situation


next:
mov ax, [si]
out 4, ax

; wait 10 seconds (10 million microseconds)
mov     cx, 98h    ;    004C4B40h = 5,000,000
mov     dx, 9680h  ;    00989680 = 10,000,000
mov     ah, 86h
int     15h
jmp nextsit

next2:
mov ax, [si]
out 4, ax

; wait 2 seconds (2 million microseconds)
mov     cx, 1Eh    ;    004C4B40h = 5,000,000
mov     dx, 8480h  ;    00989680 = 10,000,000
mov     ah, 86h
int     15h

nextsit:
add si, 2 ; next situation
cmp si, sit_end
jb  next
mov si, offset situation
jmp next


;                        FEDC_BA98_7654_3210
situation        dw      0000_0011_0000_1001b ;s1 gjelbert nalt 
s1               dw      0000_0010_1001_1001b ;s2 jeshile nalt
s2               dw      0000_0010_0110_0001b ;s3 gjelbert djatht
s3               dw      0000_0010_0101_0011b ;s4 jeshile djatht
s4               dw      0000_0010_0100_1100b ;s5 gjelbert posht
s5               dw      0000_0110_0100_1010b ;s6 jeshile posht
s6               dw      0000_0010_0100_1100b ;s7 gjelbert majtas
s7               dw      0000_0100_1100_1001b ;s8 jeshile majtas
sit_end = $


all_red          equ     0000_0010_0100_1001b

