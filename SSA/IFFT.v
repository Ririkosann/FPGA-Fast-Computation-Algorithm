`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/09 09:19:54
// Design Name: 
// Module Name: IFTT
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


module IFFT(
    input [143:0] in,
    output [143:0] out
    );

    wire [143:0] fft_out;
    wire [8:0] m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15;   
    
    FFTCore mod_fttcore_iftt(.in(in), .isInv(1'b1), .out(fft_out));
    
    assign m0 = (fft_out[8:0] * 241) % 257;
    assign m1 = (fft_out[17:9] * 241) % 257;
    assign m2 = (fft_out[26:18] * 241) % 257;
    assign m3 = (fft_out[35:27] * 241) % 257;
    assign m4 = (fft_out[44:36] * 241) % 257;
    assign m5 = (fft_out[53:45] * 241) % 257;
    assign m6 = (fft_out[62:54] * 241) % 257;
    assign m7 = (fft_out[71:63] * 241) % 257;
    assign m8 = (fft_out[80:72] * 241) % 257;
    assign m9 = (fft_out[89:81] * 241) % 257;
    assign m10 = (fft_out[98:90] * 241) % 257;
    assign m11 = (fft_out[107:99] * 241) % 257;
    assign m12 = (fft_out[116:108] * 241) % 257;
    assign m13 = (fft_out[125:117] * 241) % 257;
    assign m14 = (fft_out[134:126] * 241) % 257;
    assign m15 = (fft_out[143:135] * 241) % 257;
    
    assign out = {m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, m0};
    
endmodule
