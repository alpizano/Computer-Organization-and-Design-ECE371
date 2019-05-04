        .text
        .global sumnat
        .type   sumnat, %function

/* using Gauss summation law */

sumnat: MOV R4, R0     @ Move n value to R4
        MOV R1, #0     @ Move 0 to R1
        ADD R5, R4, #1 @ n + 1
        MUL R6, R4, R5 @ R6 = R4 * R5
        LSR R1, R6, #1 @ Divide multiplication product by 2 
DONE:   MOV R0, R1
        BX LR
