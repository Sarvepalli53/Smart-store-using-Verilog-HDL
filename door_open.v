`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 09:10:28
// Design Name: 
// Module Name: door_open
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


module door_open(pressure,doorOpen);
input pressure;
output reg doorOpen;
initial doorOpen=0;
always@(pressure)
begin
if(pressure==1)  
 begin   
doorOpen=1;   
$display("Door is opened"); 
  end
end
always@ (pressure)
begin
if(pressure==0)  
begin 
 #2 doorOpen=0;  
$display("Door is closed");  
end
end
endmodule

