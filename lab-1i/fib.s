	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	
	push	{r3, r4, lr}
	
	mov	r3,#-1
	mov	r4,#1
	
	
.LOOP:
	add	r3,r3,r4
	eor	r3,r4
	eor	r3,r4
	eor	r3,r4
	subs	r0,#1
	blt	.END
	b	.LOOP

.END:
	pop(r3,r4,lr)



	@ END CODE MODIFICATION

