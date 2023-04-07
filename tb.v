`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 20:37:14
// Design Name: 
// Module Name: tb
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


module tb_counter();
reg pressure_in,pressure_out,reset;
wire [4:0]count;
counter1 c(pressure_in, pressure_out, reset, count);
initial
begin
reset=1; pressure_in=0;pressure_out=0;
#1 reset=0; pressure_in=1; pressure_out=0;
#2 reset=0; pressure_in=0; pressure_out=0;
#1 reset=0; pressure_in=1; pressure_out=0;
#2 reset=0; pressure_in=0; pressure_out=0;
#1 reset=0; pressure_in=1; pressure_out=0;
#2 reset=0; pressure_in=0; pressure_out=0;
#2 reset=0; pressure_in=1; pressure_out=1;
#1 reset=0; pressure_in=0; pressure_out=1;
#4 reset=0; pressure_in=0; pressure_out=0;
$finish;
end
endmodule
