# Main assembler code for loading the kernel

.set MAGIC, 0xbadb002
.set FLAGS, (1<<0 | 1<<1)
.set CHECKSUM, -(MAGIC + FLAGS)

.section .multiboot
	.long MAGIC
	.long FLAGS
	.long CHECKSUM

.section .text
.extern .text
.extern kernelMain
.extern callConstructors
.global loader

loader:
	mov $kernel_stack, %esp
	call callConstructors
	push %eax
	push %ebx
	call kernelMain

_stop:
	cli
	hlt
	jmp _stop

.section .bss
.space 2*1024*1024
kernel_stack:

