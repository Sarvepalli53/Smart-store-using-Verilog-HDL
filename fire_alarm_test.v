`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 14:22:08
// Design Name: 
// Module Name: fire_alarm_test
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


module fire_alarm_test();
reg reset,fire_sensor;
wire extinguisher;
alarm uut(fire_sensor,reset,extinguisher);
initial
begin
reset=1'b1; fire_sensor=1'b0;
#1 reset=1'b0;
#4 fire_sensor=1'b1;
#5 fire_sensor=1'b0;
#3 fire_sensor=1'b1;
#2 reset=1'b1;
#2 reset=1'b0;
end
endmodule
