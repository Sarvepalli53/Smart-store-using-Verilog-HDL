`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 09:47:35
// Design Name: 
// Module Name: alaram
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


module alarm(
    input fire_sensor,
    input reset,
    output reg extinguisher
    );
always@(posedge reset or posedge fire_sensor)
begin
if(reset)
extinguisher=0;
else if(fire_sensor)
extinguisher=1;
end
always@(negedge fire_sensor)
extinguisher=0;
endmodule
