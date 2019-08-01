`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:24:16 09/21/2012 
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
module dec(
    input [3:0] d,
    output reg [6:0] seg
    );
	 //Decodificador a 7 segmento para entrada de 4 bits (hexacimal)
	always @(*)
		case(d)  //Dependiendo del valor en la entrada d de 4 bits la salida seg de 7 bits 
					//se configura para que los segmentos muestren el valor correspondiente
			0: seg = 7'b0000001;
			1: seg = 7'b1001111;
			2: seg = 7'b0010010;
			3: seg = 7'b0000110;
			4: seg = 7'b1001100;
			5: seg = 7'b0100100;
			6: seg = 7'b0100000;
			7: seg = 7'b0001111;
			8: seg = 7'b0000000;
			9: seg = 7'b0000100;
			'hA: seg = 7'b0001000;
			'hB: seg = 7'b1100000;
			'hC: seg = 7'b0110001;
			'hD: seg = 7'b1000010;
			'hE: seg = 7'b0110000;
			'hF: seg = 7'b0111000;
			default: seg = 7'b0000001;
		endcase
			

endmodule
