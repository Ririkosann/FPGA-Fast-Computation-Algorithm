`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2021 09:29:36 AM
// Design Name: 
// Module Name: simple_combinational_mult
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


module simple_combinational_mult(
 input [15:0]  multiplier, multiplicand,
   output  reg [31:0]    product
   );

   integer       i;

   always @( multiplier or multiplicand )
     begin
        product = 0;  
        for(i=0; i<16; i=i+1)
          if( multiplier[i] == 1'b1 ) product = product + ( multiplicand << i );
  
     end
     
endmodule
