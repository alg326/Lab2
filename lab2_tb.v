`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 02:08:46 PM
// Design Name: 
// Module Name: lab2_tb
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
module lab2_tb();

reg [1:0] i0t, i1t, i2t, i3t, st;
wire [6:0] segt;

lab2 uut1(i0t, i1t, i2t, i3t, st, segt);

integer i;
initial begin
    for(i=0;i<4;i=i+1)
        begin
            st = i;
            i0t=2'b00;
            i1t=2'b01;
            i2t=2'b10;
            i3t=2'b11;
            #10;
        end
    end

endmodule