% --------------------------------------------------------------%
% Start of function definition: funcintegerinteger
% --------------------------------------------------------------%
      funcintegerinteger sw 0(r14), r15
% storing intnum 0
      addi r1, r0, 0
      sw -36(r14), r1

% i = lit1
      lw r1, -36(r14)
      sw -28(r14), r1

% while loop
      gowhile1
% storing intnum 5
      addi r2, r0, 5
      sw -40(r14), r2

% i < lit2
      lw r3, -28(r14)
      lw r4, -40(r14)
      clt r5, r3, r4
      sw -56(r14), r5

      lw r1, -56(r14)
      bz r1, endwhile1
% inside the while loop
      add r9, r0, r0
% calculating offset
      lw r1, -28(r14)
      muli r2, r1, 4
      add r9, r9, r2
% writing to stdout
% Start array offsetting
      add r14, r14, r9
      lw r1, -24(r14)
% End array offsetting
      sub r14, r14, r9
      jl r15, putint

% storing intnum 1
      addi r1, r0, 1
      sw -44(r14), r1

% i + lit3
      lw r2, -28(r14)
      lw r3, -44(r14)
      add r4, r2, r3
      sw -60(r14), r4

% i = temp2
      lw r1, -60(r14)
      sw -28(r14), r1

      j gowhile1
      endwhile1
% storing intnum 1
      addi r1, r0, 1
      sw -48(r14), r1

% k + lit4
      lw r2, -32(r14)
      lw r3, -48(r14)
      add r4, r2, r3
      sw -64(r14), r4

% k = temp3
      lw r1, -64(r14)
      sw -32(r14), r1

% storing intnum 3
      addi r2, r0, 3
      sw -52(r14), r2

% k < lit5
      lw r3, -32(r14)
      lw r4, -52(r14)
      clt r5, r3, r4
      sw -68(r14), r5

% if
      lw r1, -68(r14)
      bz r1, else2
% then
% Function call to funcintegerinteger
      lw r1, -24(r14)
      sw -92(r14), r1
      lw r1, -20(r14)
      sw -88(r14), r1
      lw r1, -16(r14)
      sw -84(r14), r1
      lw r1, -12(r14)
      sw -80(r14), r1
      lw r1, -8(r14)
      sw -76(r14), r1
      lw r1, -32(r14)
      sw -100(r14), r1
      addi r14, r14, -68
      jl r15, funcintegerinteger
      subi r14, r14, -68
      lw r1, -68(r14)
      sw -68(r14), r1
      j endif2
% else
      else2
      endif2
      lw r15, 0(r14)
      jr r15
% --------------------------------------------------------------%
% End of function definition: funcintegerinteger
% --------------------------------------------------------------%
% --------------------------------------------------------------%
% Start of main
% --------------------------------------------------------------%
      entry
      addi r14, r0, topaddr

% storing intnum 0
      addi r1, r0, 0
      sw -32(r14), r1

      add r9, r0, r0
% calculating offset
      lw r1, -32(r14)
      muli r2, r1, 4
      add r9, r9, r2
% storing intnum 1
      addi r1, r0, 1
      sw -36(r14), r1

% x = lit7
      lw r1, -36(r14)
% Start array offsetting
      add r14, r14, r9
      sw -64(r14), r1

% End array offsetting
      sub r14, r14, r9
% storing intnum 1
      addi r1, r0, 1
      sw -40(r14), r1

      add r9, r0, r0
% calculating offset
      lw r1, -40(r14)
      muli r2, r1, 4
      add r9, r9, r2
% storing intnum 2
      addi r1, r0, 2
      sw -44(r14), r1

% x = lit9
      lw r1, -44(r14)
% Start array offsetting
      add r14, r14, r9
      sw -64(r14), r1

% End array offsetting
      sub r14, r14, r9
% storing intnum 2
      addi r1, r0, 2
      sw -4(r14), r1

      add r9, r0, r0
% calculating offset
      lw r1, -4(r14)
      muli r2, r1, 4
      add r9, r9, r2
% storing intnum 3
      addi r1, r0, 3
      sw -8(r14), r1

% x = lit11
      lw r1, -8(r14)
% Start array offsetting
      add r14, r14, r9
      sw -64(r14), r1

% End array offsetting
      sub r14, r14, r9
% storing intnum 3
      addi r1, r0, 3
      sw -12(r14), r1

      add r9, r0, r0
% calculating offset
      lw r1, -12(r14)
      muli r2, r1, 4
      add r9, r9, r2
% storing intnum 4
      addi r1, r0, 4
      sw -16(r14), r1

% x = lit13
      lw r1, -16(r14)
% Start array offsetting
      add r14, r14, r9
      sw -64(r14), r1

% End array offsetting
      sub r14, r14, r9
% storing intnum 4
      addi r1, r0, 4
      sw -20(r14), r1

      add r9, r0, r0
% calculating offset
      lw r1, -20(r14)
      muli r2, r1, 4
      add r9, r9, r2
% storing intnum 5
      addi r1, r0, 5
      sw -24(r14), r1

% x = lit15
      lw r1, -24(r14)
% Start array offsetting
      add r14, r14, r9
      sw -64(r14), r1

% End array offsetting
      sub r14, r14, r9
% storing intnum 0
      addi r1, r0, 0
      sw -28(r14), r1

% Function call to funcintegerinteger
      lw r1, -64(r14)
      sw -88(r14), r1
      lw r1, -60(r14)
      sw -84(r14), r1
      lw r1, -56(r14)
      sw -80(r14), r1
      lw r1, -52(r14)
      sw -76(r14), r1
      lw r1, -48(r14)
      sw -72(r14), r1
      lw r1, -28(r14)
      sw -96(r14), r1
      addi r14, r14, -64
      jl r15, funcintegerinteger
      subi r14, r14, -64
      lw r1, -64(r14)
      sw -44(r14), r1
      hlt
% --------------------------------------------------------------%
% End of main
% --------------------------------------------------------------%
%
%
% --------------------------------------------------------------%
% putint                                                        %
% --------------------------------------------------------------%
% Write an integer number to stdout. Transform the number into
% ASCII string taking the sign into account.
% Entry : integer number -> r1
% Exit : none.
%
putint	align
	add	r2,r0,r0		% Initialize buffer's index i 
	cge	r3,r1,r0		% True if N >= 0
	bnz	r3,putint1		% Branch if True (N >= 0)
	sub	r1,r0,r1		% N = -N
putint1	modi	r4,r1,10		% Rightmost digit
	addi	r4,r4,48		% Convert to ch
	divi	r1,r1,10		% Truncate rightmost digit
	sb	putint9(r2),r4		% Store ch in buffer
	addi	r2,r2,1			% i++
	bnz	r1,putint1		% Loop if not finished
	bnz	r3,putint2		% Branch if True (N >= 0)
	addi	r3,r0,45
	sb	putint9(r2),r3		% Store '-' in buffer
	addi	r2,r2,1			% i++
	add	r1,r0,r0		% Initialize output register (r1 = 0)
putint2	subi	r2,r2,1			% i--
	lb	r1,putint9(r2)		% Load ch from buffer
	putc	r1			% Output ch
	bnz	r2,putint2		% Loop if not finished
	addi r2,r0,10     % print a newline
	putc r2           % print a newline
	jr	r15			% return to the caller
putint9	res	12			% loacl buffer (12 bytes)
	align

