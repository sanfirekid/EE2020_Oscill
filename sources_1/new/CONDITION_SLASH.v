`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2016 12:51:15
// Design Name: 
// Module Name: CONDITION_SLASH
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


module CONDITION_SLASH( input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION

    );
    wire CONDITION_FOR_SLASH;
    assign CONDITION_FOR_SLASH = ((VGA_horzCoord == 194) && (VGA_vertCoord == 950))
                               || ((VGA_horzCoord == 195) && (VGA_vertCoord == 949))
                               || ((VGA_horzCoord == 196) && (VGA_vertCoord == 948))
                               || ((VGA_horzCoord == 197) && (VGA_vertCoord == 947))
                               || ((VGA_horzCoord == 198) && (VGA_vertCoord == 946))
                               || ((VGA_horzCoord == 199) && (VGA_vertCoord == 945))
                               || ((VGA_horzCoord == 200) && (VGA_vertCoord == 944))
                               || ((VGA_horzCoord == 201) && (VGA_vertCoord == 943))
                               || ((VGA_horzCoord == 202) && (VGA_vertCoord == 942))
                               || ((VGA_horzCoord == 203) && (VGA_vertCoord == 941))
                               || ((VGA_horzCoord == 204) && (VGA_vertCoord == 940));

    assign CONDITION = CONDITION_FOR_SLASH;                                                             
endmodule
