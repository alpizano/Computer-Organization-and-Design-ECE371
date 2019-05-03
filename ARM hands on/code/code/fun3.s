        .text
        .global binsrch
        .type   binsrch, %function

/* Binary search */

binsrch:  MOV R8,#-1      @ index = -1        
          MOV R4, #0      @ R0 = i    
FOR:      CMP R4, #5      @ break if loop is i >= 5      
          BGE FAIL
          LSL R5, R4, #2  @ R5 = i * 4
          LDR R6, [R0,R5] @ R6 = array[i]
          CMP R1, R6      @ if item - R6
          BEQ SUCCESS 
          ADD R4, R4, #1  @ i+1 
          B FOR
FAIL:     MOV R0, R8
          BX LR 
SUCCESS:  MOV R0, R5
          BX LR
