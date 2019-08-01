`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:16 03/14/2014 
// Design Name: 
// Module Name:    decody 
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
module decody(
    input ck,
    input [3:0] y,   //Cada entrada y debe tener una resistencia de 10k a VCC
    output [3:0] x,
    output reg[3:0] d,
    output reg da
    );
	reg [1:0]s;
	always @ (posedge ck)
	if (~da)
	s<=s+1;
	
	always @(*)
	case(y)
	4'b1110:
	begin
	d=s*4;
		da=1;
	end
	4'b1101:
	begin
	d=s*4+1;
		da=1;
	end
	4'b1011:
	begin
	d=s*4+2;
		da=1;
	end
	4'b0111:
	begin
	d=s*4+3;
		da=1;
	end
	default:
	begin
		d=0;
	da=0;
	end
	endcase
	assign x[0]=s[1]|s[0];
	assign x[1]=s[1]|~s[0];
	assign x[2]=~s[1]|s[0];
	assign x[3]=~s[1]|~s[0];
endmodule
