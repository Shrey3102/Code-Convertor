`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 17:18:00
// Design Name: 
// Module Name: CC
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


module CC(
  input [7:0] R1, 
  output reg [7:0] R2
);
  reg R3; 
  reg R4;

  always @(*) begin
    R2[7] = R1[7];
    for (int i = 0; i < 7; i = i + 1) begin
      R3 = R1[i];
      R4 = R1[i + 1];
      R2[i] = R3 ^ R4;
    end
  end

  initial begin
    $display("the converted code is %0p", R2);
  end
endmodule
