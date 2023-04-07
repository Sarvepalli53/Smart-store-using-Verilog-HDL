`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 23:48:23
// Design Name: 
// Module Name: add_product
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


module add_product(input object_in,object_inside,reset,
input [15:0]barcode,
output reg [9:0]cost);
reg [9:0]c;
reg [15:0]products[4:0];
reg [9:0]costs[4:0];
reg [9:0]qty[4:0];
integer i;
integer door_state;
integer n=5;// total number of items=5
initial
begin
 products[0][15:0]=16'b1111000011110000;
 costs[0]=10'b0000001010; //10 rupees
 qty[0]=10'b0000010000; //16 items
 products[1][15:0]=16'b1111000011110011;
 costs[1]=10'b0000000111; //7 rupees
 qty[1]=10'b0000010100; //20 items
 products[2][15:0]=16'b0101010101010101;
 costs[2]=10'b0000100111; //55 rupees
 qty[2]=10'b0000000101; //5 items
 products[3][15:0]=16'b1111000000001111;
 costs[3]=10'b0000011000; // 24 rupees
 qty[3]=10'b0000111100; //60 items
 products[4][15:0]=16'b1100010001110010;
 costs[4]=10'b0001010001; //81 rupees
 qty[4]=10'b0000001001; //9 items
end

always@(posedge object_in or posedge reset or posedge object_inside)
begin

if(reset)
begin
cost=10'b0;
end


else if(object_inside && object_in)
begin
$display("\t\t\t\t\t trolley is full, door is closed");
door_state=0;
end

else if(object_in)
begin
 $display("\t\t\t\t\tdoor is open");
 door_state=1;
  for(i=0;i<n;i=i+1)
  begin
   if(barcode[15:0]==products[i])
   begin
    $display("product",i+1);
    cost=cost+costs[i];
    qty[i]=qty[i]-1;
    $display("   item's cost",costs[i]);
    $display("  (quantity left)",qty[i]);
    $display("total cost",cost);
   end
  end
end

else if(object_inside && ~object_in)
begin
$display("\t\t\t\t\tdoor is closed");
door_state=0;
end

end

always@(negedge object_in)
begin
if(door_state)
begin
$display("\t\t\t\t\tdoor is closed");
door_state=0;
end
end

endmodule


