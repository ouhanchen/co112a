// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
// R2 = 0
@R2
M=0

(LOOP)
// if R0 <= 0 then goto END
@R0
D=M
@END
D;JLE

// D = R2 + R1
@R2
D=M
@R1
D=D+M

// R2 = D
@R2
M=D

// R0 = R0 - 1
@R0
M=M-1

// goto LOOP
@LOOP
0;JMP

(END)