`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2022 14:26:02
// Design Name: 
// Module Name: door_test
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


module door_tb();
reg pressure;
wire doorOpen;
door_open  test(pressure,doorOpen);
initial
begin
pressure=1;
#10 pressure=0;
#20 pressure=1;
#20 pressure=0;
#10 $finish;
end
endmodule
