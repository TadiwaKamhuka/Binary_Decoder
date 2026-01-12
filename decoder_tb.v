`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 14:14:33
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb;
    reg [3:0] in;
    wire [15:0] out;
    integer i;
    
    decoder4to16 uut(.in(in), .out(out));
    
    initial begin
        for (i = 0; i < 16; i=i+1) begin
            in = i[3:0];
            #50;
        end
    end
endmodule
