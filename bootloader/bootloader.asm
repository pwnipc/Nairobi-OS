; Nairobi OS bootloader V1

org 0x7c00
bits 16
start: jmp boot

; Defining variables and constants 
msg db "Welcome to Nairobi OS!", 0ah, 0dh, 0h

boot:
   cli ; no interrupts
   cld ; all that is needed to init

   mov ax, 0x50

   ; set the buffer 

   mov es, ax
   xor bx, bx


   mov al, 2 ; read 2 sectors
   mov ch, 0 ; move to track/cylinder number 0
   mov cl, 2 ; select sector 2 (sector to be read)
   mov dh, 0 ; select the head number
   mov dl, 0 ; select the drive number

   mov ah, 0x2; read sectors from the disk
   int 0x13  ; call the bios routine
   jmp 0x50:0x0 ; jump and execute the sector

   hlt ; halt the system

; we have to be 512 bytes, so we clear the rest of the bytes with 0

times 510 - ($-$$) db 0

dw 0xAA55 ; this is the boot signature

