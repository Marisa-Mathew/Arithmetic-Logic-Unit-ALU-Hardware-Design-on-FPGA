`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 12:03:45
// Design Name: 
// Module Name: ALU_tb
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

module ALU_tb();

    reg [1:0] op_code;
    reg [7:0] a, b;
    wire [15:0] result;
    ALU uut (
                .op_code(op_code), 
                .a(a),            
                .b(b),             
               .result(result)    
    );

    initial begin
       $monitor(" op_code=%b | a=%d | b=%d | result=%d ",
          op_code, a, b, result);


        op_code = 2'b00;
        a = 8'd0;
        b = 8'd0;
        


        // --- Test Case 1: Addition (op_code = 00) ---
        // Expected: 10 + 5 = 15
       
        op_code = 2'b00; a = 8'd10; b = 8'd5; #10;

        // --- Test Case 2: Subtraction (op_code = 01) ---
        // Expected: 20 - 8 = 12

        op_code = 2'b01; a = 8'd20; b = 8'd8; #10;

        // --- Test Case 3: Multiplication (op_code = 10) ---
        // Expected: 12 * 10 = 120
        
        op_code = 2'b10; a = 8'd12; b = 8'd10;#10;

        // --- Test Case 4: Division (op_code = 11) ---
        // Expected: 100 / 10 = 10
        
        op_code = 2'b11; a = 8'd100; b = 8'd5; #10;

        // --- Test Case 5: Division by Zero (op_code = 11) ---
        // The ALU  output our error code (16'hFFFF).
       
        op_code = 2'b11; a = 8'd50; b = 8'd0; #10;

 

       
    end


endmodule
