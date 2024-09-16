`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:34:59 PM
// Design Name: 
// Module Name: lab2
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


module lab2(i0t, i1t, i2t, i3t, st, segt);

wire [1:0] yt;
wire [3:0] ytt;
input wire [1:0] i0t, i1t, i2t, i3t, st;
output wire [6:0] segt;

assign ytt = {2'b0, yt};

Mux4_to_1 UUT(.i0(i0t), .i1(i1t), .i2(i2t), .i3(i3t), .s(st), .y(yt));

BCD_7_SEG UUT1(.bcd(ytt), .SEG(segt));

endmodule

module Mux4_to_1(i0, i1, i2, i3, s, y);
    input [1:0] i0, i1, i2, i3, s;
    output reg [1:0] y;
    
    always @(i0,i1,i2,i3,s)
    begin
        case(s)
            2'b00 : y = i0;
            2'b01 : y = i1;
            2'b10 : y = i2;
            2'b11 : y = i3;
            default : y = 2'bxx;
        endcase
    end
 endmodule
 
  module BCD_7_SEG(bcd, SEG);
    input [3:0] bcd;
    output reg [6:0] SEG;
    
    always @(bcd)
    begin
        case(bcd)
            0 : SEG = 7'b1000000;
            1 : SEG = 7'b1111001;
            2 : SEG = 7'b0100100;
            3 : SEG = 7'b0110000;
            default : SEG = 7'bxxxxxxx;
        endcase
    end
 endmodule 