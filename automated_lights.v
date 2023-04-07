`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 12:38:12
// Design Name: 
// Module Name: automated_lights
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


module automated_lights(
    input pir,
    input reset,
    output reg light
    );
always@(posedge reset or posedge pir)
begin
if(reset)
light=0;
else if(pir)
light=1;
end
always@(negedge pir)
light=0;
endmodule
