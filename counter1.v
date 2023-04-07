`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 20:31:11
// Design Name: 
// Module Name: counter1
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

module counter1(
input pressure_in,pressure_out,reset,
output reg [4:0]count);
always@(pressure_out,reset,pressure_in)
begin

if(reset==1)   
begin
count=5'b0;
$display(count);
end

else if(pressure_in==1 && reset==0)
begin   
count=count+5'b1;
$display(count);
end

else if(pressure_out==1 && reset==0)
begin 
count=count-5'b1;
$display(count);
end

end
endmodule


