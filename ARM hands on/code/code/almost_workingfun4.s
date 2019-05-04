  GNU nano 2.2.6                         File: fun4.s                                                        

        .text
        .global sort
        .type   sort, %function

/* Selection sort algorithm */

sort:      MOV R2,#0       @ i = 0
           MOV R9,#0       @ temp = 0
 
FOR_OUTER: CMP R2,#4       @ break if i >= 4     
           BGE DONE
           MOV R4,R2       @ iMin = i
           ADD R3,R2,#1    @ j =i+1

FOR_INNER: 
           CMP R3,#5      @ break if j >= 5
           BGE SWAP
           LSL R6,R3,#2   @ R6 = j * 4
           LSL R7,R4,#2   @ R7 = iMin * 4
           LDR R8,[R0,R6]  @ R8 = array[j]
           LDR R9,[R0,R7]  @ R9 = array[iMin]

           CMP R7,R8       @ if ( arr[j] < arr[iMin])
           ADD R3,R3,#1
           BGE FOR_INNER
           MOV R4, R3
           B FOR_INNER

SWAP:      LSL R10, R2, #2 @ R12 = i*4           
           MOV R12,R9      @ temp = array[iMin]  
           LDR R9,[R0,R10]  @ R9 = array[i]
           STR R12,[R0,R10]  @ array[i] = R10
           ADD R2,R2,#1     @ i++
           B FOR_OUTER 
DONE:      BX LR 
