`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:54:00 09/21/2012 
// Design Name: 
// Module Name:    dx 
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
module dx(
    input [1:0] s,
    output reg [3:0] y
    );
	 //Demultiplexor o decodificador 2 a 4 activo bajo hecho con case
	always @(*)
	case(s)
			0: y <= 4 'b1110;
			1: y <=4 'b1101;
			2: y <= 4 'b1011;
			3: y <= 4 'b0111;
			default: y <= 4'b1111;
		endcase
	 /* Se puede hacer con assign pero la salida y no puede ser del tipo reg
	assign	y[0] = s[0] | s[1];
	assign	y[1] = ~s[0] | s[1];
	assign	y[2] = s[0] | ~s[1];
	assign	y[3] = ~s[0] | ~s[1];
	*/
endmodule
