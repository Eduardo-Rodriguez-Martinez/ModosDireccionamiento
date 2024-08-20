TITLE Ejemplos de direccionamiento indirecto por registro   (IndirectoPorRegistro.asm)

.model small
.stack 100h
.data
    tabla dw 1234h, 5678h, 9ABCh, 0DEF0h
.code
main proc
    mov ax, @data       ; Mueve la dirección de la sección de datos al registro ax
    mov ds, ax          ; Mueve la dirección de la sección de datos al registro ds

    mov bx, OFFSET tabla; Carga el desplazamiento de la tabla en bx
    mov ax, [bx]        ; Carga el primer elemento de la tabla en ax (?)
    mov ch, [bx]

    mov dx, -1          ; Carga 0FFFFh en el registro dx
    mov [bx], dl
    mov [bx], dx

    mov BYTE PTR [bx], 0A5h      ; Carga 0A5h en la dirección de memoria apuntada por bx
    mov WORD PTR [bx], 1F7Bh     ; Carga 1F7Bh en la dirección de memoria aputnada por bx

    mov ax, 4c00h
    int 21h
main endp
end main