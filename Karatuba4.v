`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2021 03:35:34 PM
// Design Name: 
// Module Name: Karatuba4
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

module Karatuba4 (
 input [15:0] A ,
 input [15:0] B ,
 output [31:0] mul_16
 );
wire [15:0] d0 ,d1 , d2 , d7 ;
 mul_4_module u0 (( A [7:0]) ,( B [7:0]) ,( d0 ));
 mul_4_module u1 (( A [7:0]^ A [15:8]) ,( B [7:0]^ B [15:8]) ,( d1 ));
 mul_4_module u2 (( A [15:8]) ,( B [15:8]) ,( d2 ));
 assign d7 = d2 ^ d1 ^ d0 ;
 assign mul_16 [31:0]={ d2 [15:8] ,( d2 [7:0]^ d7 [15:8]) ,
 ( d0 [15:8]^ d7 [7:0]) , d0 [7:0]};
 endmodule