`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/11 21:11:43
// Design Name: 
// Module Name: FFTCore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FFTCore(
    input [143:0] in,
    input isInv,
    output [143:0] out
    );

    wire [8:0] a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15;
    wire [8:0] b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15;
    wire [8:0] c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15; 
    wire [8:0] d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15; 
    wire [8:0] e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15;  

    assign a0 = in[8:0];
    assign a1 = in[17:9];
    assign a2 = in[26:18];
    assign a3 = in[35:27];
    assign a4 = in[44:36];
    assign a5 = in[53:45];
    assign a6 = in[62:54];
    assign a7 = in[71:63];
    assign a8 = in[80:72];
    assign a9 = in[89:81];
    assign a10 = in[98:90];
    assign a11 = in[107:99];
    assign a12 = in[116:108];
    assign a13 = in[125:117];
    assign a14 = in[134:126];
    assign a15 = in[143:135];
    
    assign b0 = (a0 + a8) % 257; 
    assign b8 = (a0 - a8 + 257) % 257;
    assign b1 = (a1 + a9) % 257; 
    assign b9 = ((a1 - a9 + 257) * ((isInv == 0) ? 2 : 129)) % 257;
    assign b2 = (a2 + a10) % 257; 
    assign b10 = ((a2 - a10 + 257) * ((isInv == 0) ? 4 : 193)) % 257;
    assign b3 = (a3 + a11) % 257; 
    assign b11 = ((a3 - a11 + 257) * ((isInv == 0) ? 8 : 225)) % 257;
    assign b4 = (a4 + a12) % 257; 
    assign b12 = ((a4 - a12 + 257) * ((isInv == 0) ? 16 : 241)) % 257;
    assign b5 = (a5 + a13) % 257; 
    assign b13 = ((a5 - a13 + 257) * ((isInv == 0) ? 32 : 249)) % 257;
    assign b6 = (a6 + a14) % 257; 
    assign b14 = ((a6 - a14 + 257) * ((isInv == 0) ? 64 : 253)) % 257;
    assign b7 = (a7 + a15) % 257; 
    assign b15 = ((a7 - a15 + 257) * ((isInv == 0) ? 128 : 255)) % 257;
  
    assign c0 = (b0 + b4) % 257; 
    assign c4 = (b0 - b4 + 257) % 257;
    assign c8 = (b8 + b12) % 257; 
    assign c12 = (b8 - b12 + 257) % 257;
    assign c1 = (b1 + b5) % 257; 
    assign c5 = ((b1 - b5 + 257) * ((isInv == 0)? 4 : 193)) % 257;
    assign c9 = (b9 + b13) % 257; 
    assign c13 = ((b9 - b13 + 257) * ((isInv == 0)? 4 : 193)) % 257;
    assign c2 = (b2 + b6) % 257; 
    assign c6 = ((b2 - b6 + 257) * ((isInv == 0) ? 16 : 241)) % 257;
    assign c10 = (b10 + b14) % 257;
    assign c14 = ((b10 - b14 + 257) * ((isInv == 0) ? 16 : 241)) % 257;
    assign c3 = (b3 + b7) % 257; 
    assign c7 = ((b3 - b7 + 257) * ((isInv == 0)? 64 : 253)) % 257;
    assign c11 = (b11 + b15) % 257;
    assign c15 = ((b11 - b15 + 257) * ((isInv == 0)? 64 : 253)) % 257;

    assign d0 = (c0 + c2) % 257; 
    assign d2 = (c0 - c2 + 257) % 257;
    assign d4 = (c4 + c6) % 257; 
    assign d6 = (c4 - c6 + 257) % 257;
    assign d8 = (c8 + c10) % 257; 
    assign d10 = (c8 - c10 + 257) % 257;
    assign d12 = (c12 + c14) % 257;
    assign d14 = (c12 - c14 + 257) % 257;
    assign d1 = (c1 + c3) % 257; 
    assign d3 = ((c1 - c3 + 257) * ((isInv == 0)? 16 : 241)) % 257;
    assign d5 = (c5 + c7) % 257; 
    assign d7 = ((c5 - c7 + 257) * ((isInv == 0)? 16 : 241)) % 257;
    assign d9 = (c9 + c11) % 257; 
    assign d11 = ((c9 - c11 + 257) * ((isInv == 0)? 16 : 241)) % 257;
    assign d13 = (c13 + c15) % 257; 
    assign d15 = ((c13 - c15 + 257) * ((isInv == 0)? 16 : 241)) % 257;

    assign e0 = (d0 + d1) % 257; 
    assign e1 = (d0 - d1 + 257) % 257;
    assign e2 = (d2 + d3) % 257; 
    assign e3 = (d2 - d3 + 257) % 257;
    assign e4 = (d4 + d5) % 257; 
    assign e5 = (d4 - d5 + 257) % 257;
    assign e6 = (d6 + d7) % 257; 
    assign e7 = (d6 - d7 + 257) % 257;
    assign e8 = (d8 + d9) % 257; 
    assign e9 = (d8 - d9 + 257) % 257;
    assign e10 = (d10 + d11) % 257; 
    assign e11 = (d10 - d11 + 257) % 257;
    assign e12 = (d12 + d13) % 257; 
    assign e13 = (d12 - d13 + 257) % 257;
    assign e14 = (d14 + d15) % 257; 
    assign e15 = (d14 - d15 + 257) % 257;

    assign out = {e15, e7, e11, e3, e13, e5, e9, e1, e14, e6, e10, e2, e12, e4, e8, e0};

endmodule
