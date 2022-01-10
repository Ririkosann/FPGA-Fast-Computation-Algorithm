`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/07 10:10:53
// Design Name: 
// Module Name: Sprit
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


module Split(
    input [7:0] in,
    output [47:0] out
    );
    
    assign out = {10'b0, in[7:6], 10'b0, in[5:4], 10'b0, in[3:2], 10'b0, in[1:0]};
    
endmodule
