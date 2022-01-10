`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/08 13:21:01
// Design Name: 
// Module Name: FTT_Mult
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


module FFTMult(
        input [7:0] a,
        input [7:0] b,
        output reg [15:0] c
    );
    
 
    wire [143:0] fa;
    wire [143:0] fb;
    wire [143:0] conv;
    wire [143:0] ifft;
    wire [15:0] prod;


    FFT mod_fft_a(.in(a), .out(fa));
    FFT mod_fft_b(.in(b), .out(fb));
    Convolution mod_conv(.fa(fa), .fb(fb), .out(conv)); 
    IFFT mod_ifft(.in(conv), .out(ifft));
    Merge mod_merge(.in(ifft[95:0]), .out(prod));
    
    always @(*) begin
        c = prod;
    end
endmodule

