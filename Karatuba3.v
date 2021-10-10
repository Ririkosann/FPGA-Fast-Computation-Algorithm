`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2021 10:35:47 AM
// Design Name: 
// Module Name: Karatuba3
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


module Karatuba3 (
 input [7:0] A ,
 input [7:0] B ,
 output [15:0] mul_8
 );
wire [7:0] d0 ,d1 , d2 , d7 ;
 mul_4_module u0 (( A [3:0]) ,( B [3:0]) ,( d0 ));
 mul_4_module u1 (( A [3:0]^ A [7:4]) ,( B [3:0]^ B [7:4]) ,( d1 ));
 mul_4_module u2 (( A [7:4]) ,( B [7:4]) ,( d2 ));
 assign d7 = d2 ^ d1 ^ d0 ;
 assign mul_8 [15:0]={ d2 [7:4] ,( d2 [3:0]^ d7 [7:4]) ,
 ( d0 [7:4]^ d7 [3:0]) , d0 [3:0]};
 endmodule
