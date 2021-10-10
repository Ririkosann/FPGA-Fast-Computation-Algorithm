`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2021 11:39:55 AM
// Design Name: 
// Module Name: Karatsuba1-1
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

module mul_4_module (
 input [3:0] A ,
 input [3:0] B ,
 output [7:0] mul_4
 );
wire [3:0] d0 ,d1 , d2 , d7 ;
 mul_2_module u0 (( A [1:0]) ,( B [1:0]) ,( d0 ));
 mul_2_module u1 (( A [1:0]^ A [3:2]) ,( B [1:0]^ B [3:2]) ,( d1 ));
 mul_2_module u2 (( A [3:2]) ,( B [3:2]) ,( d2 ));
 assign d7 = d2 ^ d1 ^ d0 ;
 assign mul_4 [7:0]={ d2 [3:2] ,( d2 [1:0]^ d7 [3:2]) ,
 ( d0 [3:2]^ d7 [1:0]) , d0 [1:0]};
 endmodule
