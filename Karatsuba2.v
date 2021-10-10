`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2021 04:52:38 PM
// Design Name: 
// Module Name: Karatsuba2
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


module mul_2_module (
 input [1:0] A ,
 input [1:0] B ,
 output [3:0] mul_2
 );
 assign mul_2 [0]= A [0]& B [0];
 assign mul_2 [2]= A [1]& B [1];
 assign mul_2 [3:0]=
 { A [1]& B [1] ,
 (A [0]^ A [1])&( B [0]^ B [1])^ mul_2 [0]^ mul_2 [2] , A [0]& B [0]};
 endmodule

