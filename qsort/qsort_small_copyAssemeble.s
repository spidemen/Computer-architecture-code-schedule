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
	.file	"qsort_small.c"
	.text
	.align	2
	.global	compare
	.syntax unified
	.arm
	.type	compare, %function
compare:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r1, r2
	mov	r0, r3
	bl	strcmp
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L2
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L3
	mov	r3, #0
	b	.L6
.L3:
	mvn	r3, #0
	b	.L6
.L2:
	mov	r3, #1
.L6:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	compare, .-compare
	.align	2
	.global	Qucik_sort
	.syntax unified
	.arm
	.type	Qucik_sort, %function
Qucik_sort:
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #280
	str	r0, [fp, #-280]
	str	r1, [fp, #-284]
	ldr	r3, .L15
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-268]
	b	.L8
.L12:
	ldr	r3, [fp, #-268]
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r2, r2, r3
	sub	r3, fp, #136
	mov	r1, r2
	mov	r2, #128
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-268]
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r2, r2, r3
	sub	r3, fp, #264
	mov	r1, r2
	mov	r2, #128
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-268]
	sub	r3, r3, #1
	str	r3, [fp, #-272]
	b	.L9
.L11:
	ldr	r3, [fp, #-272]
	add	r3, r3, #1
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r1, r2, r3
	ldr	r3, [fp, #-272]
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r3, r2, r3
	mov	r0, r1
	mov	r1, r3
	mov	r3, #128
	mov	r2, r3
	bl	memcpy
	ldr	r3, [fp, #-272]
	sub	r3, r3, #1
	str	r3, [fp, #-272]
.L9:
	ldr	r3, [fp, #-272]
	cmp	r3, #0
	blt	.L10
	ldr	r3, [fp, #-272]
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r3, r2, r3
	sub	r2, fp, #136
	mov	r1, r2
	mov	r0, r3
	bl	compare
	mov	r3, r0
	cmp	r3, #0
	bgt	.L11
.L10:
	ldr	r3, [fp, #-272]
	add	r3, r3, #1
	lsl	r3, r3, #7
	ldr	r2, [fp, #-280]
	add	r3, r2, r3
	mov	r0, r3
	sub	r3, fp, #264
	mov	r2, #128
	mov	r1, r3
	bl	memcpy
	ldr	r3, [fp, #-268]
	add	r3, r3, #1
	str	r3, [fp, #-268]
.L8:
	ldr	r2, [fp, #-268]
	ldr	r3, [fp, #-284]
	cmp	r2, r3
	blt	.L12
	mov	r3, #1
	mov	r0, r3
	ldr	r3, .L15
	ldr	r2, [fp, #-8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L14
	bl	__stack_chk_fail
.L14:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L16:
	.align	2
.L15:
	.word	__stack_chk_guard
	.size	Qucik_sort, .-Qucik_sort
	.section	.rodata
	.align	2
.LC0:
	.ascii	"/input_small.dat\000"
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"%s\000"
	.align	2
.LC3:
	.ascii	"\012Sorting %d elements.\012\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 7680128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #7667712
	sub	sp, sp, #12416
	sub	sp, sp, #4
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	str	r0, [r3, #-124]
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	str	r1, [r3, #-128]
	ldr	r3, .L25
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-112]
	sub	r3, fp, #116
	mov	r1, #100
	mov	r0, r3
	bl	getcwd
	sub	r3, fp, #116
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #116
	add	r3, r3, r2
	ldr	r2, .L25+4
	mov	r0, r3
	mov	r1, r2
	mov	r3, #17
	mov	r2, r3
	bl	memcpy
	sub	r3, fp, #116
	mov	r0, r3
	bl	puts
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r4, r3
	sub	r3, fp, #116
	ldr	r1, .L25+8
	mov	r0, r3
	bl	fopen
	str	r0, [r4, #-108]
	b	.L18
.L20:
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r3, [r3, #-112]
	add	r3, r3, #1
	str	r3, [r2, #-112]
.L18:
	ldr	r3, .L25+12
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r2, fp, #7667712
	sub	r2, r2, #12
	sub	r2, r2, #12288
	ldr	r2, [r2, #-112]
	lsl	r2, r2, #7
	add	r2, r3, r2
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r1, .L25+16
	ldr	r0, [r3, #-108]
	bl	__isoc99_fscanf
	mov	r3, r0
	cmp	r3, #1
	bne	.L19
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r3, [r3, #-112]
	ldr	r2, .L25+20
	cmp	r3, r2
	ble	.L20
.L19:
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r1, [r3, #-112]
	ldr	r0, .L25+24
	bl	printf
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	ldr	r3, .L25+12
	sub	r1, fp, #12
	add	r3, r1, r3
	ldr	r1, [r2, #-112]
	mov	r0, r3
	bl	Qucik_sort
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #-116]
	b	.L21
.L22:
	ldr	r3, .L25+12
	sub	r2, fp, #12
	add	r3, r2, r3
	sub	r2, fp, #7667712
	sub	r2, r2, #12
	sub	r2, r2, #12288
	ldr	r2, [r2, #-116]
	lsl	r2, r2, #7
	add	r3, r3, r2
	mov	r0, r3
	bl	puts
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r3, [r3, #-116]
	add	r3, r3, #1
	str	r3, [r2, #-116]
.L21:
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	mov	r2, r3
	sub	r3, fp, #7667712
	sub	r3, r3, #12
	sub	r3, r3, #12288
	ldr	r2, [r2, #-116]
	ldr	r3, [r3, #-112]
	cmp	r2, r3
	blt	.L22
	mov	r3, #0
	mov	r0, r3
	ldr	r3, .L25
	ldr	r2, [fp, #-16]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L24
	bl	__stack_chk_fail
.L24:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L26:
	.align	2
.L25:
	.word	__stack_chk_guard
	.word	.LC0
	.word	.LC1
	.word	-7680104
	.word	.LC2
	.word	59999
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",%progbits
