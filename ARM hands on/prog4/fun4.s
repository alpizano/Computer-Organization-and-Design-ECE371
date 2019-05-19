        .text
        .global sort
        .type   sort, %function

/* Selection sort algorithm */

sort:      MOV R2,#0                @ i=0
           LDR R3,[R0]              @ load array base address to R3

FOR_OUTER: CMP R2,#4                @ break if i>=4     
           MOV R4,R2                @ iMin = i
           BGE DONE
           ADD R5,R2,#1             @ j=i+1

FOR_INNER: 
           CMP R5,#5                @ break if j>=5
           BGE SWAP

           LDR R6,[R0,R5,LSL #2]    @ R6 = array[j]
           LDR R7,[R0,R4,LSL #2]    @ R7 = array[iMin]

           CMP R6,R7                @ if (arr[j] < arr[iMin])
           MOVLT R4,R5              @ iMin=j
           ADD R5,R5,#1             @ j++
           B FOR_INNER

SWAP:     
           LDR R8,[R0,R4,LSL #2]     @  j=4 new minimum=1; temp = 1  
           LDR R9,[R0,R2,LSL #2]     @ array[4]=3
           STR R9,[R0,R4,LSL #2]     @ array[i]=R10
           STR R8,[R0,R2,LSL #2]     @ array[i]=temp

           ADD R2,R2,#1              @ i++
           B FOR_OUTER
 
DONE:      BX LR
