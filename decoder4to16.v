`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 15:07:47
// Design Name: 
// Module Name: decoder4to16
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


module decoder4to16(
    input [3:0] in,
    output [15:0] out
    );
    
    wire [3:0] en;
    
    decoder2to4 enable(.en(1'b1), .in(in[3:2]), .out(en));
    
    decoder2to4 dec0(.en(en[0]), .in(in[1:0]), .out(out[3:0]));
    decoder2to4 dec1(.en(en[1]), .in(in[1:0]), .out(out[7:4]));
    decoder2to4 dec2(.en(en[2]), .in(in[1:0]), .out(out[11:8]));
    decoder2to4 dec3(.en(en[3]), .in(in[1:0]), .out(out[15:12]));
    
    
endmodule
