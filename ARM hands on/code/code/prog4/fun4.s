  

        .text
        .global sort
        .type   sort, %function

/* Selection sort algorithm */

sort:      MOV R4,#0      @ R4 = i
           MOV R5,#0      @ R5 = j
           MOV R8,#0      @ R8 = iMin 
FOR_OUTER: CMP R5,#4      @ break if j >= n-1      
           BGE DONE
           MOV R8,R5       @ iMin = j
           ADD R10,R5,#1  @ i = j + 1           
FOR_INNER  CMP R10,#5      @ break if i >= n
           BGE SWAP
           LSL R6,R4,#2  @ R6 = i * 4
           LDR R7,[R0,R6] @ R7 = array[i]
           LDR R9,[R0,R8] @ R9 = array[iMin]
           CMP R7,R9
           BGE MIN_CHECK
           MOV R8,R4      @ iMin = i 
           ADD R4,R4, #1  @ i++
           B FOR_INNER
MIN_CHECK: CMP R8,R5      @ iMin - j
           BNE SWAP
           B FOR_OUTER
SWAP:      LDR R11,[R0,R5] 
           STR R9,[R0,R5]  @ 
           STR R11,[R0,R8]
           ADD R5, R5, #1  @ j++
           B FOR_OUTER 
DONE:      BX LR 


  GNU nano 2.2.6                        File: fun4.s                                            Modified  

        .text
        .global sort
        .type   sort, %function

/* Selection sort algorithm */

sort:      MOV R4,#0       @ R4 = i
           MOV R5,#0       @ R5 = j
           MOV R8,#0       @ R8 = iMin
 
FOR_OUTER: CMP R5,#4       @ break if j >= n-1      
           BGE DONE
           MOV R8,R5       @ iMin = j
           ADD R4,R5,#1   @ i = j + 1

FOR_INNER: CMP R4,#5      @ break if i >= n
           BGE SWAP

           LDR R7,[R0,R4]  @ R7 = array[i]
           LDR R9,[R0,R8]  @ R9 = array[iMin]

           CMP R7,R9
           ADD R4,R4,#1
           BGE FOR_INNER        
           MOV R8,R4       @ iMin = i, remember index

           B FOR_INNER

SWAP:      CMP R8, R5
           BEQ FOR_OUTER
           LDR R10,[R0,R8] @ a[iMin]

           STR R7,[R0,R8]  @ 
           STR R10,[R0,R4]
           ADD R5, R5, #1  @ j++
           B FOR_OUTER 
DONE:      BX LR 









        .text
        .global sort
        .type   sort, %function

/* Selection sort algorithm */

sort:      MOV R4,#0       @ R4 = i
           MOV R5,#0       @ R5 = j
           MOV R8,#0       @ R8 = iMin
 
FOR_OUTER: CMP R4,#4       @ break if i >= n-1      
           BGE DONE
           MOV R8,R5       @ iMin = i
           ADD R4,R4,#1

FOR_INNER: ADD R5,R4,#1   @ j = i+1
           CMP R5,#5      @ break if j >= n
           BGE SWAP

           LDR R7,[R0,R5]  @ R7 = array[j]
           LDR R9,[R0,R8]  @ R9 = array[iMin]

           CMP R7,R9
           ADD R5,R5,#1    @ j++
           BGE FOR_INNER        
           MOV R8,R5       @ iMin = j, remember index
           B FOR_INNER

SWAP:      CMP R8, R5
           BEQ FOR_OUTER
           MOV R10,R9      @ R10 = array[iMin]
           LDR R11,[R0,R4]  @ R11 = array[i]
           STR R11,[R0,R8]  @ array[iMin] = array[i]
           STR R10,[R0,R4]  @ array[i] = R10
 
           B FOR_OUTER 
DONE:      BX LR 



