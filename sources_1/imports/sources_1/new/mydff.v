`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2016 23:25:49
// Design Name: 
// Module Name: mydff
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


module mydff(
    input CLOCK, D,
    output reg Q
    );
    
    always @(posedge CLOCK)
    begin
        Q <= D;
    end
endmodule
