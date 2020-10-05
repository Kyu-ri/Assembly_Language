TITLE Practice06 - Q1

INCLUDE Irvine32.inc


.data
arrayB BYTE 10h, 20h, 30h, 40h
arrayW WORD 30 DUP(1), 0, 0
arrayD DWORD 12345678h

.code
main PROC
; PTR Operator
; Little Endian Order
mov al, BYTE PTR arrayD; AL = 78
mov bl, BYTE PTR[arrayD + 1]; BL = 56
mov cl, BYTE PTR[arrayD + 2]; CL = 34
mov dl, BYTE PTR[arrayD + 3]; DL = 12
mov ax, WORD PTR arrayD; AX = 5678
mov bx, WORD PTR[arrayD + 2]; BX = 1234
mov ax, WORD PTR[arrayD + 1]; AX = 3456
mov bx, WORD PTR[arrayD + 2]; BX = 1234
mov cx, WORD PTR[arrayD + 3]; CX = 0012
call DumpRegs

; TYPE Operator
mov eax, TYPE arrayB; EAX = 00000001
mov eax, TYPE arrayW; EAX = 00000002
mov eax, TYPE arrayD; EAX = 00000004
; LENGTHOF Operator
mov ebx, LENGTHOF arrayB; EBX = 00000004
mov ebx, LENGTHOF arrayW; EBX = 00000020
mov ebx, LENGTHOF arrayD; EBX = 00000001
; SIZEOF Operator
mov ecx, SIZEOF arrayB; ECX = 00000004
mov ecx, SIZEOF arrayW; ECX = 00000040
mov ecx, SIZEOF arrayD; ECX = 00000004

exit
main ENDP
END main