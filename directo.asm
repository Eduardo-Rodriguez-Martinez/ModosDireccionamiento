TITLE Ejemplos de direccionamiento directo   (directo.asm)

.386
.model flat, stdcall
.stack 100h

ExitProcess proto, dwExitCode : dword

.data
    dato1 dd 12345678h
    dato2 dd 87654321h
    dato3 dd 0
.code
main proc
    mov al, BYTE PTR dato1
    mov ax, WORD PTR dato1
    mov eax, dato1; Mueve el dato1 al registro eax
    mov ebx, dato2; Mueve el dato2 al registro ebx
    mov ecx, dato3; Mueve el dato3 al registro ecx
    mov edx, -1
    mov BYTE PTR dato3, dl; Mueve el registro al a dato3
    mov WORD PTR dato3, dx; Mueve el registro ax a dato3
    mov dato3, edx; Mueve el registro edx a dato3

    invoke ExitProcess, 0
main endp
end main