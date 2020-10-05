TITLE practice 12 - 2

INCLUDE Irvine16.inc
SCANMAX = 128
.data
scanCode BYTE SCANMAX + 1 DUP(0)

.code
main PROC
	mov ah,2
	mov dl, 47h
	int 21h

	mov esi,0
L1:
	mov ah,11h
	int 16h
	jz L1

	mov ah,10h
	int 16h
	mov scanCode[esi],ah
	cmp  scanCode[esi],47h
	je quit
	inc esi
	jmp L1
quit:
	call Clrscr
	exit

main ENDP
END main