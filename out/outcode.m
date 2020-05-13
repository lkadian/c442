% --------------------------------------------------------------%
% Start of function definition: fibinteger
% --------------------------------------------------------------%
      fibinteger sw -4(r14), r15
% storing intnum 1
      addi r2, r0, 1
      sw -12(r14), r2

% n <= lit1
      lw r3, -24(r14)
      lw r4, -12(r14)
      cle r5, r3, r4
      sw -28(r14), r5

% if
      lw r1, -28(r14)
      bz r1, else1
% then
% return
      lw r1, -24(r14)
      sw 0(r14),r1
      j endif1
% else
      else1
% storing intnum 1
      addi r1, r0, 1
      sw -16(r14), r1

% n - lit2
      lw r2, -24(r14)
      lw r3, -16(r14)
      sub r4, r2, r3
      sw -32(r14), r4

% Function call to fibinteger
      lw r1, -32(r14)
      sw -72(r14), r1
      addi r14, r14, -48
      jl r15, fibinteger
      subi r14, r14, -48
      lw r1, -48(r14)
      sw -36(r14), r1
% storing intnum 2
      addi r1, r0, 2
      sw -20(r14), r1

% n - lit3
      lw r2, -24(r14)
      lw r3, -20(r14)
      sub r4, r2, r3
      sw -40(r14), r4

% Function call to fibinteger
      lw r1, -40(r14)
      sw -72(r14), r1
      addi r14, r14, -48
      jl r15, fibinteger
      subi r14, r14, -48
      lw r1, -48(r14)
      sw -44(r14), r1
% temp3 + temp5
      lw r2, -36(r14)
      lw r3, -44(r14)
      add r4, r2, r3
      sw -48(r14), r4

% return
      lw r1, -48(r14)
      sw 0(r14),r1
      endif1
      lw r15, -4(r14)
      jr r15
% --------------------------------------------------------------%
% End of function definition: fibinteger
% --------------------------------------------------------------%
% --------------------------------------------------------------%
% Start of main
% --------------------------------------------------------------%
      entry
      addi r14, r0, topaddr

% reading from stdin
      jl r15, getint

      sw -8(r14), r1

% Function call to fibinteger
      lw r1, -8(r14)
      sw -32(r14), r1
      addi r14, r14, -8
      jl r15, fibinteger
      subi r14, r14, -8
      lw r1, -8(r14)
      sw -4(r14), r1
% writing to stdout
      lw r1, -4(r14)
      jl r15, putint

      hlt
% --------------------------------------------------------------%
% End of main
% --------------------------------------------------------------%
%
%
% --------------------------------------------------------------%
% getint                                                        %
% --------------------------------------------------------------%
% Read an integer number from stdin. Read until a non digit char
% is entered. Allowes (+) & (-) signs only as first char. The
% digits are read in ASCII and transformed to numbers.
% Entry : none.
% Exit : result -> r1
%
getint	align
add	r1,r0,r0		% Initialize input register (r1 = 0)
add	r2,r0,r0		% Initialize buffer's index i
add	r4,r0,r0		% Initialize sign flag
getint1	getc	r1			% Input ch
ceqi	r3,r1,43		% ch = '+' ?
bnz	r3,getint1		% Branch if true (ch = '+')
ceqi	r3,r1,45		% ch = '-' ?
bz	r3,getint2		% Branch if false (ch != '-')
addi	r4,r0,1			% Set sign flag to true
j	getint1			% Loop to get next ch
getint2	clti	r3,r1,48		% ch < '0' ?
bnz	r3,getint3		% Branch if true (ch < '0')
cgti	r3,r1,57		% ch > '9' ?
bnz	r3,getint3		% Branch if true (ch > '9')
sb	getint9(r2),r1		% Store ch in buffer
addi	r2,r2,1			% i++
j	getint1			% Loop if not finished
getint3	sb	getint9(r2),r0		% Store end of string in buffer (ch = '\0')
add	r2,r0,r0		% i = 0
add	r1,r0,r0		% N = 0
add	r3,r0,r0		% Initialize r3
getint4	lb	r3,getint9(r2)		% Load ch from buffer
bz	r3,getint5		% Branch if end of string (ch = '\0')
subi	r3,r3,48		% Convert to number (M)
muli	r1,r1,10		% N *= 10
add	r1,r1,r3		% N += M
addi	r2,r2,1			% i++
j	getint4			% Loop if not finished
getint5	bz	r4,getint6		% Branch if sign flag false
sub	r1,r0,r1		% N = -N
getint6	jr	r15			% Return to the caller
getint9	res	12			% Local buffer (12 bytes)
align
%
%

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

