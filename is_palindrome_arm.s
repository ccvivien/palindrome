.global is_palindrome

.section .text

// r0 char *s
// r1 long len
is_palindrome:
	push {r4, r5}

	cmp r1, #1
	ble exit

	eor r2, r2      // i = 0
	add r3, r1, #-1 // j = len - 1
	lsr r1, r1, #1  // k = len / 2
loop:
	ldrb r4, [r0, r2]
	ldrb r5, [r0, r3]
	cmp r4, r5
	eorne r0, r0
	bne exit
	
	add r2, r2, #1
	add r3, r3, #-1
	cmp r2, r1
	blt loop
exit:
	pop {r4, r5}
	bx lr
