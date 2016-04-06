`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NUS ECE
// Engineer: Shahzor Ahmad
// 
// Create Date: 05.03.2016 15:56:40
// Design Name: 
// Module Name: single_pulse_generator
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


module single_pulse_generator( input CLOCK, PB, output reg SINGLE_PULSE );

    wire Q1;
    wire Q2;
    
    mydff dff1(CLOCK, PB, Q1);
    mydff dff2(CLOCK, Q1, Q2);
    
    always @(posedge CLOCK)
    begin
        SINGLE_PULSE <= Q1 & (~Q2);
    end

endmodule
