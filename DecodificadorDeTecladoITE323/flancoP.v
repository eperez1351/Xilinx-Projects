`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:03 03/28/2014 
// Design Name: 
// Module Name:    flancoP 
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
module flancoP(
    input ck,
	 input da,
    output p
    );
	reg [2:0]r;
	always @(posedge ck)
	begin
	r[0]<=da;
	r[2:1]<=r[1:0];
	end
	assign p=r[0]&r[1]&~r[2];
endmodule
