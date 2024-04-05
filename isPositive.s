.global isPositive

.text

@ bool isPositive(int32_t x);

isPositive:
	CMP R0, #0	@ Subtract 0 from R0, set the flags
	MOV R0, #0  @ Setup return to be 'false'
	BMI END		@ If N is set, jump to END
	BEQ END		@ If Z is set, jump to END
	MOV R0, #1
	
END:
	BX LR
