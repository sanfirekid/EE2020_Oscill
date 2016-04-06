`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2016 03:04:54
// Design Name: 
// Module Name: CONDITION_ZERO_ZERO_ONE_MS
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


module CONDITION_ZERO_ZERO_ONE_MS(input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION
    
    );
    
    wire CONDITION_FOR_1;
    wire CONDITION_FOR_FIRST_0;
    wire CONDITION_FOR_SECOND_0;
    wire CONDITION_FOR_DOT;
    wire CONDITION_FOR_S;
    
    assign CONDITION_FOR_8 = ((VGA_horzCoord == 263) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
                            
    
    assign CONDITION_FOR_SECOND_0 = ((VGA_vertCoord == 940) && (VGA_horzCoord >= 253) && (VGA_horzCoord < 258))
                            || ((VGA_vertCoord == 950) && (VGA_horzCoord >= 253) && (VGA_horzCoord < 258))
                            || ((VGA_horzCoord == 253) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                            || ((VGA_horzCoord == 257) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
    
    assign CONDITION_FOR_FIRST_0 = ((VGA_vertCoord == 940) && (VGA_horzCoord >= 243) && (VGA_horzCoord < 248))
                            || ((VGA_vertCoord == 950) && (VGA_horzCoord >= 243) && (VGA_horzCoord < 248))
                            || ((VGA_horzCoord == 243) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                            || ((VGA_horzCoord == 247) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
                            
    assign CONDITION_FOR_DOT = ((VGA_vertCoord == 950) && (VGA_horzCoord == 250));
    
    assign CONDITION_FOR_S = ((VGA_vertCoord== 944) && ((VGA_horzCoord == 284) || (VGA_horzCoord == 285)))
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 286) || (VGA_horzCoord == 283)))
                            || ((VGA_vertCoord == 946) && (VGA_horzCoord == 283))
                            || ((VGA_vertCoord == 947) && ((VGA_horzCoord == 284) || (VGA_horzCoord == 285)))
                            || ((VGA_vertCoord == 948) && (VGA_horzCoord == 286))
                            || ((VGA_vertCoord == 949) && ((VGA_horzCoord == 286) || (VGA_horzCoord == 283)))
                            || ((VGA_vertCoord == 950) && ((VGA_horzCoord == 284) || (VGA_horzCoord == 285)));
    
     assign CONDITION_FOR_m = ((VGA_horzCoord == 269) && (VGA_vertCoord >= 944) && (VGA_vertCoord <= 950))
                            || ((VGA_vertCoord == 944) && ((VGA_horzCoord == 271) || (VGA_horzCoord == 272) || (VGA_horzCoord == 276)
                            || (VGA_horzCoord == 277)))   
                            || ((VGA_vertCoord == 945) && ((VGA_horzCoord == 270) || (VGA_horzCoord == 273) || (VGA_horzCoord == 275)
                            || (VGA_horzCoord == 278)))
                            || ((VGA_vertCoord >= 944) && (VGA_vertCoord <= 950) && (VGA_horzCoord == 274))
                            || ((VGA_horzCoord == 279) && (VGA_vertCoord >= 946) && (VGA_vertCoord <= 950));
                                                      
    
    
    assign CONDITION = CONDITION_FOR_FIRST_0 || CONDITION_FOR_SECOND_0 || CONDITION_FOR_8 || CONDITION_FOR_DOT || CONDITION_FOR_m || CONDITION_FOR_S;
                                
endmodule
