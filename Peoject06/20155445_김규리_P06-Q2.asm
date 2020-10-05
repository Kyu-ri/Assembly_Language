TITLE Practice06 - Q2

INCLUDE Irvine32.inc

.data
arrayD DWORD 10000h, 20000h, 30000h
sum DWORD 60000h

.code
; main Procedure
main PROC
mov esi, OFFSET arrayD; ESI = 009B4000
mov ecx, LENGTHOF arrayD; ECX = 00000003
call ArraySum; ESP = 0025FD88; EIP = 009B103B
mov sum, eax; EAX = 00060000

exit
main ENDP

; Prcedure ArraySum
; esi and ecx is parameters of Prcedure ArraySum
ArraySum PROC
push esi; ESP = 0025FD84
push ecx; ESP = 0025FD80

mov eax, 0
L1: add eax, [esi]; EIP = 009B1042, 009B1042, 009B1042; EAX = 00010000, 00030000, 00060000
	add esi, TYPE DWORD; EIP = 009B1044, 009B1044, 009B1044; ESI = 009B4000, 009B4004, 009B4008
	loop L1; EIP = 009B1047, 009B1047, 009B1047; ECX = 00000002, 00000001, 00000000
	pop ecx; ESP = 0025FD80; ECX = 00000003
	pop esi; EIP = 009B104A; ESP = 0025FD84; ESI = 009B400C
	ret; ESP = 0025FD88; EIP = 009B104B
	ArraySum ENDP

	END main