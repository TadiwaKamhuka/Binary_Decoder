`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 14:53:17
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
    input [2:0] in,
    output [7:0] out
    );
    
    wire [3:0] o0, o1;
    
    decoder2to4 d0(.en(~in[2]), .in(in[1:0]), .out(o0));
    decoder2to4 d1(.en(in[2]), .in(in[1:0]), .out(o1));

    assign out = {o1, o0};
endmodule
