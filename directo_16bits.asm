TITLE Ejemplos de direccionamiento directo   (directo_16bits.asm)

.model small
.stack 100h
.data
    dato1 dw 1234h
    dato2 dw 8765h
    dato3 dw 0
.code
main proc
    mov ax, @data; Mueve la dirección de la sección de datos al registro ax
    mov ds, ax; Mueve la dirección de la sección de datos al registro ds

    mov al, byte ptr dato1
    mov ax, ds:[04h]; Mueve el dato1 al registro ax
    mov bx, dato2; Mueve el dato2 al registro bx
    mov cx, dato3; Mueve el dato3 al registro cx
    mov dx, -1
    mov byte ptr dato3, dl; Mueve el registro dl a dato3
    mov dato3, dx; Mueve el registro dx a dato3

    mov ax, 4c00h
    int 21h
main endp
end main