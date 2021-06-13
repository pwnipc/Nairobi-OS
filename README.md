# Nairobi-OS
A Kenyan made Operating System


_____________________________________________
-using QEMU for testing and GDB for debugging

[ qemu-system-i386 -machine q35 -fda disk.img ] this will run the bootloader without debugging.

[qemu-system-i386 -machine q35 -fda disk.img -gdb tcp::26000 -S ] this will run the bootloader and allow remote debugging.

To attatch a debugger, open a new terminal and run gdb , set the architecture to 8086 using [set architecture i8086], then attatch to the process using [target remote localhost:26000 ]


## TO - DO , create the WinuX kernel and the necessary file linkers and  add a proper documentation
