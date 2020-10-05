TITLE Practice06 - Q3 - 2

INCLUDE Irvine32.inc

.data
nameESP BYTE "ESP : ", 0
nameStack BYTE "  STACK : ", 0
nameEBP BYTE "  EBP : ", 0

.code
main PROC
push 6; ESP = 0016FC04
call PrintALL
push 5; ESP = 0016FC00
call PrintALL
call AddTwo; EIP = 00C43404
call PrintfALL
exit
main ENDP

AddTwo PROC
call PrintALL
push ebp; ESP = 0016FBF8; EBP = 0016FC0C
call PrintALL
mov ebp, esp; ESP = 0016FBF4; EBP = 0016FC0C
call PrintALL
mov eax, [ebp + 12]; EAX = 00000006
; call PrintALL
add eax, [ebp + 8]; EAX = 0000000B
; call PrintALL
pop ebp; ESP = 0016FBF4; EBP = 0016FBF4
call PrintALL
ret; EIP = 00C4341A
AddTwo ENDP

PrintALL PROC
mov edx, OFFSET nameESP
call WriteString
mov eax, esp
add eax, 4
call WriteHex
mov edx, OFFSET nameStack
call WriteString
mov eax, [esp+4]
call WriteHex
mov edx, OFFSET nameEBP
call WriteString
mov eax, ebp
call WriteHex
call Crlf
ret
PrintALL ENDP
END main