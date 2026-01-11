; boot.s - simple bootloader
[org 0x7c00]

start:
    mov ah, 0x0e       ; teletype output
    mov al, 'D'
    int 0x10
    mov al, 'Y'
    int 0x10
    mov al, 'L'
    int 0x10
    mov al, 'A'
    int 0x10
    mov al, 'T'
    int 0x10
    mov al, 'O'
    int 0x10
    mov al, 'S'
    int 0x10
    mov al, 'H'
    int 0x10
    mov al, '!'
    int 0x10

hang:
    jmp hang

times 510-($-$$) db 0
dw 0xAA55
