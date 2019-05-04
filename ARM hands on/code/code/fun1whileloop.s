	.text
	.global sumnat
	.type   sumnat, %function

		MOV R1, #1
		MOV R4, R0
sumnat: CMP R4, R1
		BEQ DONE
        ADD R1, R1, #2
		B sumnat
DONE:   MOV R0, R1
		BX LR
