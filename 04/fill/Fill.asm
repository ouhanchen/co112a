// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// 初始化屏幕地址
@SCREEN
D=A
@R0
M=D

(LOOP)
// 檢查鍵盤是否為0，如果是，跳轉到 FILL_WHITE
@KBD
D=M
@FILL_WHITE
D;JEQ

// FILL_BLACK
// 設置屏幕地址的內容為全黑 (-1)
@R0
A=M
M=-1

// 遞增屏幕地址
@R0
M=M+1

// 跳回 LOOP
@LOOP
0;JMP

// FILL_WHITE
// 設置屏幕地址的內容為全白 (0)
@R0
A=M
M=0

// 遞增屏幕地址
@R0
M=M+1

// 跳回 LOOP
@LOOP
0;JMP

