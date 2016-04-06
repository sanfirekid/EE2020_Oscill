`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2016 01:57:58
// Design Name: 
// Module Name: CONDITION_ONE_MS
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


module CONDITION_ONE_MS(input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION
    
    );
    
    wire CONDITION_FOR_1;
    wire CONDITION_FOR_M;
    wire CONDITION_FOR_S;
    
    assign CONDITION_FOR_1 = ((VGA_horzCoord == 245) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
       

    assign CONDITION_FOR_m = ((VGA_horzCoord == 250) && (VGA_vertCoord >= 944) && (VGA_vertCoord <= 950))
                            || ((VGA_vertCoord == 944) && ((VGA_horzCoord == 252) || (VGA_horzCoord == 253) || (VGA_horzCoord == 257)
                            || (VGA_horzCoord == 258)))   
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 251) || (VGA_horzCoord == 254) || (VGA_horzCoord == 256)
                            || (VGA_horzCoord == 259)))
                            || ((VGA_vertCoord >= 944) && (VGA_vertCoord <= 950) && (VGA_horzCoord == 255))
                            || ((VGA_horzCoord == 260) && (VGA_vertCoord >= 946) && (VGA_vertCoord <= 950));
                           
   
    assign CONDITION_FOR_S = ((VGA_vertCoord== 944) && ((VGA_horzCoord == 265) || (VGA_horzCoord == 266)))
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 267) || (VGA_horzCoord == 264)))
                            || ((VGA_vertCoord == 946) && (VGA_horzCoord == 264))
                            || ((VGA_vertCoord == 947) && ((VGA_horzCoord == 265) || (VGA_horzCoord == 266)))
                            || ((VGA_vertCoord == 948) && (VGA_horzCoord == 267))
                            || ((VGA_vertCoord == 949) && ((VGA_horzCoord == 267) || (VGA_horzCoord == 264)))
                            || ((VGA_vertCoord == 950) && ((VGA_horzCoord == 265) || (VGA_horzCoord == 266)));
    
    
    assign CONDITION = CONDITION_FOR_1 || CONDITION_FOR_m || CONDITION_FOR_S;
                                
endmodule
