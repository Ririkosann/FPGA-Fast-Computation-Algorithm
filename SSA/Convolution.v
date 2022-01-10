`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/07 11:03:19
// Design Name: 
// Module Name: Convolution
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


module Convolution(
    input [143:0] fa,
    input [143:0] fb,
    output [143:0] out 
    );
    
    wire [8:0] m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15;        
    
    assign m0 = (fa[8:0] * fb[8:0]) % 257;
    assign m1 = (fa[17:9] * fb[17:9]) % 257;
    assign m2 = (fa[26:18] * fb[26:18]) % 257;
    assign m3 = (fa[35:27] * fb[35:27]) % 257;
    assign m4 = (fa[44:36] * fb[44:36]) % 257;
    assign m5 = (fa[53:45] * fb[53:45]) % 257;
    assign m6 = (fa[62:54] * fb[62:54]) % 257;
    assign m7 = (fa[71:63] * fb[71:63]) % 257;
    assign m8 = (fa[80:72] * fb[80:72]) % 257;    
    assign m9 = (fa[89:81] * fb[89:81]) % 257;
    assign m10 = (fa[98:90] * fb[98:90]) % 257;
    assign m11 = (fa[107:99] * fb[107:89]) % 257;
    assign m12 = (fa[116:108] * fb[116:108]) % 257;
    assign m13 = (fa[125:117] * fb[125:117]) % 257;
    assign m14 = (fa[134:126] * fb[134:126]) % 257;
    assign m15 = (fa[143:135] * fb[143:135]) % 257;   
    
    assign out = {m15, m14, m13, m12, m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, m0};
    
endmodule
