TITLE Ejemplos de direccionamiento indirecto por registro   (IndirectoPorRegistro.asm)

.386
.model flat, stdcall
.stack 100h

ExitProcess proto, dwExitCode : dword

.data
    tabla dw 1234h, 5678h, 9ABCh, 0DEF0h
.code
main proc
    mov eax, OFFSET tabla; Carga el desplazamiento de la tabla en eax
    mov ebx, [eax]       ; Carga el primer elemento de la tabla en ebx (?)
    mov ch, [eax]
    mov dx, [eax]

    mov ecx, -1
    mov [eax], cl
    mov [eax], cx
    mov [eax], ecx

    mov BYTE PTR [eax], 0A5h      ; Carga 0A5h en la dirección de memoria apuntada por eax
    mov WORD PTR [eax], 1F7Bh     ; Carga 1F7Bh en la dirección de memoria aputnada por eax
    mov DWORD PTR [eax], 03h      ; Carga 03h en la dirección de memoria apuntada por eax

    invoke ExitProcess, 0
main endp
end main