.386
.model flat
.data

.code
_Disc PROC

push ebp
mov ebp, esp
sub esp, 20

mov DWORD PTR[ebp + 8], 00000001h
mov DWORD PTR[ebp + 12], 00000002h
mov DWORD PTR[ebp + 16], 00000001h
mov DWORD PTR[ebp + 20], 00000004h


mov eax, DWORD PTR[ebp + 12]
mul DWORD PTR[ebp + 12]
mov ebx, eax


mov eax, DWORD PTR[ebp + 8]
mul DWORD PTR[ebp + 16]
mul DWORD PTR[ebp + 20]


sub ebx, eax
mov eax, ebx
add esp, 00000014h
pop ebp
ret
_Disc ENDP

END