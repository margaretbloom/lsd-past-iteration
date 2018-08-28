BITS 64
GLOBAL _start

SECTION .text

_start:

 mov ecx, 10000000

.loop:

 dec ecx             ;| 
  jz .end            ;| 1 uOP (call it D)

 
jmp .loop            ;| 1 uOP (call it J)

.end:
 mov eax, 60
 xor edi, edi
 syscall

 
