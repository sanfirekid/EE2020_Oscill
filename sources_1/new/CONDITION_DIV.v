`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2016 12:46:35
// Design Name: 
// Module Name: CONDITION_DIV
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


module CONDITION_DIV( input[11:0] VGA_horzCoord, input[11:0] VGA_vertCoord, output CONDITION

    );
    
    wire CONDITION_FOR_D;
    wire CONDITION_FOR_I;
    wire CONDITION_FOR_V;
    
    assign CONDITION_FOR_D = ((VGA_horzCoord == 208) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950))
                           || ((VGA_vertCoord == 940) && (VGA_horzCoord >= 208) && (VGA_horzCoord <=210))
                           || ((VGA_vertCoord == 941) && (VGA_horzCoord == 211))
                           || ((VGA_vertCoord == 942) && (VGA_horzCoord == 212))
                           || ((VGA_vertCoord == 943) && (VGA_horzCoord == 213))
                           || ((VGA_horzCoord == 214) && (VGA_vertCoord >= 944) && (VGA_vertCoord <= 946))
                           || ((VGA_vertCoord == 947) && (VGA_horzCoord == 213))
                           || ((VGA_vertCoord == 948) && (VGA_horzCoord == 212))
                           || ((VGA_vertCoord == 949) && (VGA_horzCoord == 211))
                           || ((VGA_vertCoord == 950) && (VGA_horzCoord >= 208) && (VGA_horzCoord <= 210));
                           
    assign CONDITION_FOR_I = ((VGA_horzCoord == 217) && (VGA_vertCoord >= 940) && (VGA_vertCoord <= 950));
    
    assign CONDITION_FOR_V = ((VGA_horzCoord == 220) && ((VGA_vertCoord == 940)  || (VGA_vertCoord == 941)))
                           || ((VGA_horzCoord == 221) && ((VGA_vertCoord == 942)  || (VGA_vertCoord == 943)))
                           || ((VGA_horzCoord == 222) && ((VGA_vertCoord == 944)  || (VGA_vertCoord == 945)))
                           || ((VGA_horzCoord == 223) && ((VGA_vertCoord == 946)  || (VGA_vertCoord == 947)))
                           || ((VGA_horzCoord == 224) && ((VGA_vertCoord == 948)  || (VGA_vertCoord == 949)))
                           || ((VGA_horzCoord == 225) && (VGA_vertCoord == 950))
                           || ((VGA_horzCoord == 226) && ((VGA_vertCoord == 949)  || (VGA_vertCoord == 948)))
                           || ((VGA_horzCoord == 227) && ((VGA_vertCoord == 947)  || (VGA_vertCoord == 946)))
                           || ((VGA_horzCoord == 228) && ((VGA_vertCoord == 945)  || (VGA_vertCoord == 944)))
                           || ((VGA_horzCoord == 229) && ((VGA_vertCoord == 943)  || (VGA_vertCoord == 942)))
                               || ((VGA_horzCoord == 230) && ((VGA_vertCoord == 941)  || (VGA_vertCoord == 940)));
                               
    assign CONDITION = (CONDITION_FOR_D || CONDITION_FOR_I || CONDITION_FOR_V);
endmodule
