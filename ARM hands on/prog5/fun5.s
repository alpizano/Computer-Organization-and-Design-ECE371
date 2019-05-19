        .text
        .global strrev
        .type   strrev, %function

/* String Reversal  algorithm */

strrev:    MOV R2,#0    
           MOV R6,#-1
    
LABEL1:    LDRB R4,[R1,R2]
           CMP R4,#0
           BEQ LABEL2
           ADD R2,R2,#1
           ADD R6,R6,#1 
           B LABEL1

LABEL2:    MOV R5, #0
           MOV R2, #0

LABEL3:    LDRB R3,[R0,R2]
           LDRB R4,[R1,R6]

LABEL4:    CMP R3,R4       
           BEQ LABEL5
           B DONE
           ADDEQ R5,R5,#1
           CMP R4,#0
           ADDEQ R5,R5,#1
           CMP R5,#2
           BEQ LABEL5
           CMP R3,R4
           BNE DONE
           ADD R2,R2,#1
           SUB R6,R6,#1
           B LABEL3

DONE:      MOV R0,#0
           BX LR
LABEL5:    MOV R0, #1
           BX LR 

