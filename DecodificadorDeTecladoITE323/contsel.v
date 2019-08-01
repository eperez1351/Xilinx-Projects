`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:44:15 09/21/2012 
// Design Name: 
// Module Name:    contsel 
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
//Contador que selecciona el dato del multiplexor mx y seleccion la pantalla donde se debe mostra
//mediante el demultiplexor dx
module contsel(
    input ck2,
    output reg [1:0] s
    );
	always @(posedge ck2)
			s <= s +1;
	
endmodule
