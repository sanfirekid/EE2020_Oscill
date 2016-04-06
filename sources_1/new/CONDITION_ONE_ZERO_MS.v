`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2016 01:54:48
// Design Name: 
// Module Name: CONDITION_ONE_ZERO_MS
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


module CONDITION_ONE_ZERO_MS(input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION
    
    );
    
    wire CONDITION_FOR_1;
    wire CONDITION_FOR_0;
    wire CONDITION_FOR_M;
    wire CONDITION_FOR_S;
    
    assign CONDITION_FOR_1 = ((VGA_horzCoord == 245) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
                            
    
    assign CONDITION_FOR_0 = ((VGA_vertCoord == 940) && (VGA_horzCoord >= 251) && (VGA_horzCoord < 256))
                            || ((VGA_vertCoord == 950) && (VGA_horzCoord >= 251) && (VGA_horzCoord < 256))
                            || ((VGA_horzCoord == 251) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                            || ((VGA_horzCoord == 255) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
                            
    
    assign CONDITION_FOR_m = ((VGA_horzCoord == 259) && (VGA_vertCoord >= 944) && (VGA_vertCoord <= 950))
                            || ((VGA_vertCoord == 944) && ((VGA_horzCoord == 261) || (VGA_horzCoord == 262) || (VGA_horzCoord == 266)
                            || (VGA_horzCoord == 267)))   
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 260) || (VGA_horzCoord == 263) || (VGA_horzCoord == 265)
                            || (VGA_horzCoord == 268)))
                            || ((VGA_vertCoord >= 946) && (VGA_vertCoord <= 950) && (VGA_horzCoord == 264))
                            || ((VGA_horzCoord == 269) && (VGA_vertCoord >= 946) && (VGA_vertCoord <= 950));
                           
    
    assign CONDITION_FOR_S = ((VGA_vertCoord== 944) && ((VGA_horzCoord == 273) || (VGA_horzCoord == 274)))
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 275) || (VGA_horzCoord == 272)))
                            || ((VGA_vertCoord == 946) && (VGA_horzCoord == 272))
                            || ((VGA_vertCoord == 947) && ((VGA_horzCoord == 273) || (VGA_horzCoord == 274)))
                            || ((VGA_vertCoord == 948) && (VGA_horzCoord == 275))
                            || ((VGA_vertCoord == 949) && ((VGA_horzCoord == 275) || (VGA_horzCoord == 272)))
                            || ((VGA_vertCoord == 950) && ((VGA_horzCoord == 273) || (VGA_horzCoord == 274)));
    
    
    assign CONDITION = CONDITION_FOR_0 || CONDITION_FOR_1 || CONDITION_FOR_m || CONDITION_FOR_S;
                                
endmodule