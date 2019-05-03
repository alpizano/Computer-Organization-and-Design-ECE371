
        .text
        .global swap
        .type   swap, %function

/* Swapping numbers */

/* Swapping numbers */

swap:   LDR R3,[R0]
        LDR R4,[R1] 
        STR R3,[R1]
        STR R4,[R0]  
        BX LR