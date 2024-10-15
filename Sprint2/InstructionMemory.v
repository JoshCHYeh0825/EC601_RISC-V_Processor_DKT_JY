`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/14/2024 06:23:24 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(PCAddr,Ins);
    input [31:0] PCAddr;
    output [31:0] Ins;
    
    reg [31:0]RAM[1023:0];
    
    assign Ins = RAM[PCAddr];
endmodule
