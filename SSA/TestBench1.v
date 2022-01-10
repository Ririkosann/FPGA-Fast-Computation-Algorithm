`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/07 11:25:10
// Design Name: 
// Module Name: TestBench
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


module TestBench;
    reg [7:0] a;
    reg [7:0] b;

    wire [15:0] c;

    FFTMult uut(.a(a), .b(b), .c(c));

    
    initial begin
        a = 155;
        b = 225;
    end
endmodule
