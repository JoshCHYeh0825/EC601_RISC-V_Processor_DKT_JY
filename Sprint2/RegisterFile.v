`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Devin Kot-Thompson
// 
// Create Date: 10/14/2024 04:30:16 PM
// Design Name: 
// Module Name: RegisterFile
// Project Name: RISC-V single cycle
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


module RegisterFile(RR1, RR2, WR, WD, WEn, clock, RD1, RD2);
    input [4:0] RR1;
    input [4:0] RR2;
    input [4:0] WR;
    input [31:0] WD;
    input WEn;
    input clock;
    output [31:0] RD1;
    output [31:0] RD2;
    
    reg[31:0]RF[31:0]; //Register File 32 registers of 32 bit size
    
    //Register Read inputs select the Register from the Register File
    assign RD1 = RF[RR1];                                   
    assign RD2 = RF[RR2];
    
    /*on positive edge of clock if Write is enabled the 
    register file will load the Write Data into the Write Register*/
    always begin 
    @(posedge clock)
    if(WEn) RF[WR] <= WD;
    end
    
    
    
endmodule
