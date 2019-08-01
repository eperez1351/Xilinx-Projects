`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:10:33 09/21/2012 
// Design Name: 
// Module Name:    mx16a4 
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
//Selector de datos 16 a 4.  Los selectores S0 y S1 que vienen del contsel mandan
// a la salida y [3:0] un dato de 4 bits de la entrada i[15:0].
module mx16a4(
    input [15:0] i,
    input [1:0] s,
    output reg [3:0] y
    );
	always @(*)
		case(s)
			0: y = i[3:0];  //Si los selectores s=0(00) Y[3:0]=i[3:0]
			1: y = i[7:4];	//Si los selectores s=1(01) Y[3:0]=i[7:4]
			2: y = i[11:8];	//Si los selectores s=2(10) Y[3:0]=i[11:8]
			3: y = i[15:12];	//Si los selectores s=3(11) Y[3:0]=i[3:0]
			default: y = i[3:0];
		endcase

endmodule
