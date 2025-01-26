`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:37 01/25/2025 
// Design Name: 
// Module Name:    ALUv_32bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALUv_32bit (
    input [31:0] a,
    input [31:0] b,
    input [2:0] opr,
	input cin,
    input shiftdir,         // Shift direction: 0 for left, 1 for right
    output reg [31:0] result,
    output reg add_cout,    // Carry-out for addition
    output reg sub_cout     // Carry-out for subtraction
);

always @(*)

	begin

    result = 32'b0;
    add_cout = 1'b0;
    sub_cout = 1'b0;

    case (opr)
        3'b000: 
		begin // Addition
            {add_cout, result} = a + b;
        end
        3'b001: 
		begin // Subtraction
            {sub_cout, result} = a - b;
        end
        3'b010: 
		begin // Logical shift
            if (shiftdir == 1'b0) // Left shift
                result = a << 1;
            else // Right shift
                result = a >> 1;
        end
        3'b011: 
		begin // AND
            result = a & b;
        end
        3'b100, 3'b101, 3'b110, 3'b111: 
		begin // OR (for 3'b1XX)
            result = a | b;
        end

    endcase
end

endmodule
