`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 14:23:56
// Design Name: 
// Module Name: test_lights
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


module test_lights();
reg reset,pir;
wire light;
automated_lights uut(pir,reset,light);
initial
begin
reset=1'b1; pir=1'b0;
#1 reset=1'b0;
#4 pir=1'b1;
#5 pir=1'b0;
end
endmodule
