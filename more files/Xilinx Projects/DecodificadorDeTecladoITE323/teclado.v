`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:38:06 03/26/2014 
// Design Name: 
// Module Name:    teclado 
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
module teclado(
    input clk,
    input [3:0] y,
//	 input [2:0]sw,
//	 input [3:3]btn,
	 output [3:0]x,
 //   output [6:0] ld,
    output [6:0] a_to_g,
    output [3:0] an
    );
	 
wire ck1,da,p;
//wire ck1hz;
wire [3:0]d, sel;
wire [15:0]w1;
//wire [15:0]w2;
wire [3:0]q0;
wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
wire [3:0]w;

assign w1={q3,q2,q1,q0};

div CkA1Hz (
    .ck(clk), 
    .ck1(ck1)
	// .ck1hz(ck1hz)
    );

decody decoT(
    .ck(ck1), 
    .y(y), 
    .x(x), 
    .d(d), 
    .da(da)
    );
	 
	 decoX dx (
    .d(d), 
    .q(w)
    );
	 
	 flancoP fp (
    .ck(ck1), 
    .da(da), 
    .p(p)
    );
	/* assign ld[4]=da;
	 assign	ld[5]=ck1;
	 assign	ld[6]=p;
	 assign ld[3:0]=d;*/
registro registro3 (
    .ck(ck1), 
	 .ce(p),
    .d(q2), 
    .q(q3)
    );

registro registro2 (
    .ck(ck1), 
	 .ce(p),
    .d(q1), 
    .q(q2)
    );

registro registro1 (
    .ck(ck1), 
	 .ce(p),
    .d(q0), 
    .q(q1)
    );
	 
registro registro0 (
    .ck(ck1), 
	 .ce(p),
    .d(w), 
    .q(q0)
    );

	 
topdinamic Visualizador (
    .ck1(ck1), 
    .q(w1), 
    .an(sel), 
    .a_to_g(a_to_g)
    );
assign an=~sel;


endmodule
