`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/09 11:42:10
// Design Name: 
// Module Name: Merge
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


module Merge(
    input [95:0] in,
    output [15:0] out
    );
    
    wire [8:0] a0, a1, a2, a3, a4, a5, a6, a7;
    
    assign a0 = in[8:0];
    assign a1 = in[17:9];
    assign a2 = in[26:18];
    assign a3 = in[35:27];
    assign a4 = in[44:36];
    assign a5 = in[53:45];
    assign a6 = in[62:54];
    assign a7 = in[71:63];
    
    assign out = (a7 << 14) + (a6 << 12) + (a5 << 10) + (a4 << 8) + (a3 << 6) + (a2 << 4) + (a1 << 2) + a0;

endmodule
