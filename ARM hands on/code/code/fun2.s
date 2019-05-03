
        .text
        .global swap
        .type   swap, %function

/* Swapping numbers */

		MOV R3,R0      @ Move arg1 of function to R3, i.e. 4
		MOV R4,R1      @ Move arg2 of function to R4, i.e. 3
swap:   ADD R5, R3, R4 @ R5 = R3 + R4, i.e. 7 = 4 + 3 
        MOV R4, R3     @ Move R3 to R4, i.e. R4 = 4
		SUB R6, R5, R4 @ R6 = R5 - R4, i.e. R6 = 7 - 4 = 3
		BX LR

