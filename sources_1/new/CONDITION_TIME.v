`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2016 11:57:07
// Design Name: 
// Module Name: CONDITION_TIME
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


module CONDITION_TIME( input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION

    );
        
        wire CONDITION_FOR_T;
        wire CONDITION_FOR_I;
        wire CONDITION_FOR_M;
        wire CONDITION_FOR_E;
        
        assign CONDITION_FOR_T = ((VGA_vertCoord == 940) && (VGA_horzCoord >= 161) && (VGA_horzCoord < 168))
                               || ((VGA_horzCoord == 164) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
                               
        assign CONDITION_FOR_I = ((VGA_horzCoord == 171) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
        
        assign CONDITION_FOR_M = ((VGA_horzCoord == 177) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                               || ((VGA_horzCoord == 183) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                               || ((VGA_horzCoord == 178) && (VGA_vertCoord == 941))
                               || ((VGA_horzCoord == 179) && (VGA_vertCoord == 942))
                               || ((VGA_horzCoord == 180) && (VGA_vertCoord == 943))
                               || ((VGA_horzCoord == 181) && (VGA_vertCoord == 942))
                               || ((VGA_horzCoord == 182) && (VGA_vertCoord == 941));
                               
        assign CONDITION_FOR_E = ((VGA_horzCoord == 187) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                               || ((VGA_vertCoord == 940) && (VGA_horzCoord >= 187) && (VGA_horzCoord < 192))
                               || ((VGA_vertCoord == 945) && (VGA_horzCoord >= 187) && (VGA_horzCoord < 192))
                               || ((VGA_vertCoord == 950) && (VGA_horzCoord >= 187) && (VGA_horzCoord < 192));
        
        assign CONDITION = (CONDITION_FOR_T || CONDITION_FOR_I || CONDITION_FOR_M || CONDITION_FOR_E);
        
endmodule
