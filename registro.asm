TITLE Ejemplos de uso del direccionamiento por registro     (registro.asm)

.386
.model flat, stdcall
.stack 100h

ExitProcess proto, dwExitCode : dword

.code
main proc
    mov ebx, 2C345678h; Inicializa el registro ebx
    ; Formas equivalentes de direccionamiento inmediato
    ;mov ebx, 00101100001101000101011001111000B; el dato inmediato se representa en binario
    ;mov ebx, 741627512; el dato inmediato se representa en decimal
    ;mov ebx, ',4Vx'; el dato inmediato se representa en ASCII
    mov eax, 0FFFFFFFFh; Inicializa el registro eax
    ; El tamaño de los registros debe ser el mismo
    mov al, bh; Mueve un dato de 8 bits
    mov ax, bx; Mueve un dato de 16 bits
    mov eax, ebx; Mueve un dato de 32 bits
    ;mov es, ds; No se puede mover un registro de segmento a otro
    ;mov cs, ax; No se permite sobreescribir el registro de segmento de codigo

    invoke ExitProcess, 0
main endp
end main