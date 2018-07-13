	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"hello.c"
	.text
	.align	2
	.global	myAtoi
	.syntax unified
	.arm
	.type	myAtoi, %function
myAtoi:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, fp}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-16]
	mov	r3, #0
	mov	r4, #0
	str	r3, [fp, #-12]
	str	r4, [fp, #-8]
	b	.L2
.L3:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L3
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L4
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L8
.L4:
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L6
	mvn	r3, #0
	b	.L7
.L6:
	mov	r3, #1
.L7:
	str	r3, [fp, #-16]
	b	.L8
.L14:
	sub	r4, fp, #12
	ldmia	r4, {r3-r4}
	adr	r2, .L15
	ldmia	r2, {r1-r2}
	cmp	r1, r3
	sbcs	r3, r2, r4
	blt	.L9
	sub	r4, fp, #12
	ldmia	r4, {r3-r4}
	adr	r2, .L15
	ldmia	r2, {r1-r2}
	cmp	r4, r2
	cmpeq	r3, r1
	bne	.L10
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #55
	ble	.L10
.L9:
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L11
	mvn	r3, #-2147483648
	b	.L12
.L11:
	mov	r3, #-2147483648
	b	.L12
.L10:
	ldr	r3, [fp, #-8]
	mov	r2, #10
	mul	r2, r3, r2
	ldr	r3, [fp, #-12]
	mov	r1, #0
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-12]
	mov	r0, #10
	umull	r3, r4, r1, r0
	add	r2, r2, r4
	mov	r4, r2
	ldr	r2, [fp, #-20]
	add	r1, r2, #1
	str	r1, [fp, #-20]
	mov	r1, r2
	ldr	r2, [fp, #-24]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	sub	r2, r2, #48
	mov	r1, r2
	asr	r2, r1, #31
	adds	r3, r3, r1
	adc	r4, r4, r2
	str	r3, [fp, #-12]
	str	r4, [fp, #-8]
.L8:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L13
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L14
.L13:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
.L12:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{r4, fp}
	bx	lr
.L16:
	.align	3
.L15:
	.word	214748364
	.word	0
	.size	myAtoi, .-myAtoi
	.global	__aeabi_i2d
	.global	__aeabi_dcmplt
	.section	.rodata
	.align	2
.LC0:
	.ascii	" There are total %d  prime \012\000"
	.text
	.align	2
	.global	Count_Prime
	.syntax unified
	.arm
	.type	Count_Prime, %function
Count_Prime:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, fp, lr}
	add	fp, sp, #20
	sub	sp, sp, #40
	str	r0, [fp, #-56]
	ldr	r0, .L27
	ldr	r0, [r0]
	str	r0, [fp, #-24]
	mov	r0, sp
	mov	r7, r0
	ldr	r0, [fp, #-56]
	sub	r0, r0, #2
	str	r0, [fp, #-52]
	ldr	r0, [fp, #-56]
	sub	ip, r0, #1
	str	ip, [fp, #-32]
	mov	ip, r0
	mov	r5, ip
	mov	r6, #0
	lsl	r2, r6, #5
	orr	r2, r2, r5, lsr #27
	lsl	r1, r5, #5
	mov	r2, r0
	mov	r1, r2
	mov	r2, #0
	lsl	r4, r2, #5
	orr	r4, r4, r1, lsr #27
	lsl	r3, r1, #5
	mov	r3, r0
	lsl	r3, r3, #2
	add	r3, r3, #3
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	b	.L18
.L19:
	
	
	ldr	r4, [fp, #-48]
	add	r4, r4, #2

	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-44]
	mov	r1, #1

	str	r4, [fp, #-48]
	ldr	r5, [fp, #-44]

	add	r5, r5, #1

	str	r1, [r3, r2, lsl #2]
	str	r1, [r3, r5, lsl #2]
	
	add	r5, r5, #1
	
	str	r5, [fp, #-44]

	

.L18:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-44]

	cmp	r2, r3
	ble	.L19
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L20
.L25:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	str	r3, [fp, #-36]
	b	.L22
.L24:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L23
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-52]
.L23:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	mov	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-36]
.L22:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L24
.L21:
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L20:
	ldr	r0, [fp, #-40]
	bl	__aeabi_i2d
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [fp, #-56]
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L25
	ldr	r1, [fp, #-52]
	ldr	r0, .L27+4
	bl	printf
	mov	sp, r7
	nop
	ldr	r3, .L27
	ldr	r2, [fp, #-24]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L26
	bl	__stack_chk_fail
.L26:
	sub	sp, fp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L28:
	.align	2
.L27:
	.word	__stack_chk_guard
	.word	.LC0
	.size	Count_Prime, .-Count_Prime
	.section	.rodata
	.align	2
.LC2:
	.ascii	" After convert, The N =%d\012\000"
	.align	2
.LC1:
	.ascii	"+9998\000"
	.space	1
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	ldr	r3, .L32
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r2, .L32+4
	sub	r3, fp, #16
	ldm	r2, {r0, r1}
	str	r0, [r3]
	add	r3, r3, #4
	strh	r1, [r3]	@ movhi
	mov	r3, #0
	strb	r3, [fp, #-10]
	sub	r3, fp, #16
	mov	r0, r3
	bl	myAtoi
	str	r0, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r0, .L32+8
	bl	printf
	ldr	r0, [fp, #-20]
	bl	Count_Prime
	mov	r3, #0
	mov	r0, r3
	ldr	r3, .L32
	ldr	r2, [fp, #-8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L31
	bl	__stack_chk_fail
.L31:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L33:
	.align	2
.L32:
	.word	__stack_chk_guard
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
