`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2026 14:14:12
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
    input en,
    input [1:0] in,
    output [3:0] out
    );
    
    assign out[0] = en & ~in[1] & ~in[0];
    assign out[1] = en & ~in[1] & in[0];
    assign out[2] = en & in[1] & ~in[0];
    assign out[3] = en & in[1] & in[0]; 
endmodule
