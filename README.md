# Nairobi-OS
A Kenyan made Operating System


_____________________________________________

- using QEMU for testing and GDB for debugging

### How to run
```bash 
qemu-system-i386 -machine q35 -fda disk.img 
```
### This will run the bootloader without debugging.

```bash
qemu-system-i386 -machine q35 -fda disk.img -gdb tcp::26000 -S
```
### This will run the bootloader and allow remote debugging.

To attatch a debugger, open a new terminal and run 

```bash 
gdb
```

- set the architecture to 8086 using 
```bash 
set architecture i8086
```
- then attatch to the process using 

```bash
target remote localhost:26000
```


## TO - DO , create the WinuX kernel and the necessary file linkers and  add a proper documentation
