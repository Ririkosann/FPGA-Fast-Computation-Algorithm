`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/07 13:18:43
// Design Name: 
// Module Name: FTT
// Project Name: 
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


module FFT(
    input [7:0] in,
    output [143:0] out
    );
    wire [143:0] fft_in;
    
    FFTCore mod_fftcore(.in(fft_in), .isInv(1'b0), .out(out));
    
    assign fft_in = {154'b0, in[7:6], 10'b0, in[5:4], 10'b0, in[3:2], 10'b0, in[1:0]};
    

 endmodule  