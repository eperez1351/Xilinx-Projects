`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:20:57 03/26/2014 
// Design Name: 
// Module Name:    div 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module div(
    input ck,
    output reg ck1
	// output reg ck1hz
    );
reg [16:0]cont;
	always @(posedge ck)
	cont<=cont+1;
	always @(posedge cont[16])
	ck1<=~ck1;
//	always @(posedge cont[22])
//	ck1hz<=~ck1hz;

endmodule
