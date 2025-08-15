`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 12:02:55
// Design Name: 
// Module Name: ALU
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

module ALU(

    input [1:0] op_code,
    input [7:0] a, b,
    output reg [15:0] result //2^4 =16 Answer
);

always @(*) begin
    case(op_code)
        2'b00: begin // Addition
            result = a + b;
        end
        2'b01: begin // Subtraction
            result = a - b;
        end
        2'b10: begin // Multiplication
            result = a * b;
        end
        2'b11: begin // Division
            if (b != 8'b0) begin//dont divivde by 0
                result = a / b;
            end 
            else begin
                // Handle division by zero case, e.g., set to a known value
                result = 16'hFFFF; // or some other error indicator
            end
        end
        default: begin
            result = 16'hXXXX; // Undefined opcode
        end
    endcase
end

endmodule
