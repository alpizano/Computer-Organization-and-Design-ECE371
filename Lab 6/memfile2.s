; memfile2.asm
; david_harris@hmc.edu and sarah_harris@hmc.edu 
MAIN	SUB  R0, R15, R15
		ADD  R1, R0, #255
		ADD  R2, R1, R1
		STR  R2, [R0, #196]
		EOR  R3, R1, #77
		AND  R4, R3, #0x1F
		ADD  R5, R3, R4
		LDRB R6, [R5]
		LDRB R7, [R5, #1]
		CMP	 R6, R7
		BLT  MAIN
		BGT  HERE
		STR  R1, [R4, #110]
		B 	MAIN
HERE	STR  R6, [R4, #110]
