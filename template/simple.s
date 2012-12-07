.section .data
    # initialized data here

.section .bss
    # uninitialized data here

.section .text
.globl _start
function:
    pushl %ebp
    movl %esp, %ebp
    # normal function code
    movl %ebp, %esp
    popl %ebp

_start:
    # main code
    movl $0, %eax
