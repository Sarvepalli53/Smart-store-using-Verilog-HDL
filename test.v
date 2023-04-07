`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 23:49:31
// Design Name: 
// Module Name: test
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


module test();
reg object_in,reset,object_inside;
reg [15:0]barcode;
wire [9:0]cost;
add_product uut(object_in,object_inside,reset,barcode,cost);
initial
begin
reset=1'b1; object_in=1'b0;object_inside=1'b0;
#2 reset=1'b0;
#4  object_in=1'b1; object_inside=1'b0; barcode=16'b1111000011110000;
#3  object_in=1'b0; object_inside=1'b1;
#2  object_in=1'b1; object_inside=1'b0; barcode=16'b0101010101010101;
#3  object_in=1'b0; object_inside=1'b1;
#4  object_in=1'b1; object_inside=1'b0; barcode=16'b1100010001110010;
#2  object_in=1'b0; object_inside=1'b1;
#2  object_in=1'b1;object_inside=1'b0; barcode=16'b0000000000000000;
#5  object_in=1'b0;object_inside=1'b0;
#5  object_in=1'b1; object_inside=1'b0; barcode=16'b1111000000001111;
#2  object_in=1'b0; object_inside=1'b1;
#5  object_in=1'b1;object_inside=1'b1;
#1 $finish;
end
endmodule
