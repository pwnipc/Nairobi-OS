; Nairobi OS bootloader V1

org 0x7c00
bits 16
start: jmp boot

; Defining variables and constants 
msg db "Welcome to Nairobi OS!", 0ah, 0dh, 0h

boot:
   cli ; no interrupts
   cld ; all that is needed to init
   hlt ; halt the system

; we have to be 512 bytes, so we clear the rest of the bytes with 0

times 510 - ($-$$) db 0

dw 0xAA55 ; this is the boot signature

