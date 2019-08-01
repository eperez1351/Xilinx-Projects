`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:30 10/20/2018 
// Design Name: 
// Module Name:    statemachine 
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
module statemachine(
    input ck,
    input p,
    input [3:0] w,
    output reg ce,
    output reg enter,
    output reg bs,
    output reg ss,
    output reg load,
    output reg updw,
	 output reg reset
    );
	parameter chequearP = 4'b0000;
   parameter valordeW = 4'b0001;
   parameter cargarreg = 4'b0010;
   parameter rst = 4'b0011;
   parameter entertecla = 4'b0100;
   parameter ld = 4'b0101;
   parameter backs = 4'b0110;
   parameter sos = 4'b0111;
	parameter up_dw = 4'b1000;

   reg [3:0] ea = chequearP;

   always@(posedge ck)
      
         case (ea)
            chequearP : begin
               if (p)
                  ea <= valordeW;
              
               else
                  ea <= chequearP;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
            valordeW : begin
               if (w<=4'h9)
                  ea <= cargarreg;
               else if (w==4'hA)
                  ea <= rst;
               else if (w==4'hB)
                  ea <= entertecla;
					else if (w==4'hc)
                  ea <= ld;
					else if (w==4'hd)
                  ea <= backs;
					else if (w==4'he)
                  ea <= sos;
					else if (w==4'hf)
                  ea <= up_dw;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;    
               
            end
            cargarreg : begin
	  ea<=4'b0000;
     ce<=1'b1;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
            rst : begin
				if(p)
				ea<=4'b0000;
				else
				ea<=rst;
             
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b1;
            end
            entertecla : begin
				if(!p)
				ea<=entertecla;
				else
               ea <= chequearP;
     ce<=1'b0;
     enter<=1'b1;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
            ld : begin
				if(!p)
				ea<=ld;
				else
               ea <= chequearP;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b1;
     updw<=1'b0;
     reset<=1'b0;
            end
            backs : begin
				if(p)
				 ea <= chequearP;
				 else
				 ea<=backs;
     ce<=1'b1;
     enter<=1'b0;
     bs<=1'b1;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
            sos : begin
				if(p)
               ea <= chequearP;
					else 
					ea<=sos;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b1;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
				 up_dw : begin
				 if (p)
               ea <= chequearP;
					else
					ea<=up_dw;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b1;
     reset<=1'b0;
            end
            default : begin  // Fault Recovery
     ea <= chequearP;
     ce<=1'b0;
     enter<=1'b0;
     bs<=1'b0;
     ss<=1'b0;
     load<=1'b0;
     updw<=1'b0;
     reset<=1'b0;
            end
          endcase
						


endmodule
