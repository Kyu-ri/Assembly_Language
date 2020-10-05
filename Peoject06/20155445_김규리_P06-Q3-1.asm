TITLE Practice06 - Q3-1

INCLUDE Irvine32.inc

.data

.code
main PROC
mov ebx, 6
mov ecx, 5
call AddTwo; EIP = 0106102A
exit
main ENDP

AddTwo PROC
pushad; ESP = 003FFCF4; EBP = 003FFD00
mov eax, ebx; EAX:00000006; EIP = 01061037
add eax, ecx; EAX:0000000B; EIP = 01061039
popad; ESP = 003FFCD4; EBP = 003FFD00
ret; EIP = 0106103C
AddTwo ENDP

END main