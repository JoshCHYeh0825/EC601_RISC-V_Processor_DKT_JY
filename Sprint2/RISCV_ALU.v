`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 09:33:48 PM
// Design Name: 
// Module Name: RISCV_ALU
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


module RISCV_ALU(SrcA, SrcB, Ainv, Binv, ALUsel, Zero, Result, Overflow, Carryout);  

    input [31:0] SrcA;
    input [31:0] SrcB;
    input Ainv;
    input Binv;
    input [1:0] ALUsel;
    output Zero;
    output reg [31:0] Result;
    output Overflow;
    output Carryout;
    
    assign Zero = (Result==0)?1:0;
    always begin
    @(Ainv, Binv, ALUsel, SrcA, SrcB)
        case({Ainv, Binv, ALUsel})
            0: Result <= (SrcA & SrcB);
            1: Result <= (SrcA | SrcB);
            2: Result <= (SrcA + SrcB);
            6: Result <= (SrcA - SrcB);
            7: Result <= (SrcA<SrcB)?1:0;
            12: Result <= (~(SrcA | SrcB));
        endcase
    end
    
//add overflow carryout checking
            
endmodule
