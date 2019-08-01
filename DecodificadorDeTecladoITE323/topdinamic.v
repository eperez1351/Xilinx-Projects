`timescale 1ns / 1ps
module topdinamic(
    input wire ck1,		//Entrada de reloj a 50 MHz, pin b8 del FPGA
	 input 	wire	[15:0]q,
    output wire [3:0] an,	//Salidas activas bajo que controlan los anodos de las pantallas mediante transistores PNP,
 //   output	[2:0]ld,		//Salida a los leds utilizadas para monitoreo durante el diseño
	 output wire[6:0] a_to_g	//Salida de los 7 segmentos de las pantallas cada una con su resistencia
    );
	wire [1:0]s;	//Union entre contador modulo 4 (selector) a 190 Hz el multiplexor 16 a 4 y el demultiplexor 2 a 4 (demult)
	wire [3:0]d;	//Conexion desde salida del multiplexor mx a la entrada del decodificador decodif



	//La salida del contador mod64k es la que semuestra en el visualizador, pero no es parte del visualizador
	//Junto a count50M y count100 proporcionan el conteo a 1 Hz que se muestra en el visualizador
	
	//La salida de contsel se encarga de seleccionar cada uno de los 4 datos que llegan
	//al multiplexor mx sincronizanlos con la pantalla donde se debe mostrar cada dato
	//por medio del demultiplexor dx
	contsel selector
	(.ck2(ck1),
	.s(s));
	//Mediante la combinacion de S1 y S0 que salen del selector con el nombre de S el multiplexor 16 a 4
	//	mx pone en el decodificador dec uno de los 4 datos de 4 bits que salen del contador mod64k
	mx16a4 mx
	(.i(q),
	.s(s),
	.y(d));
	//El demultiplexor dx con 4 salidas activas bajo se encarga de energizar uno de los 4 
	//anodos de las pantallas del modulo DIGILENT. 
	dx	demult
	(.s(s),
	.y(an));
	//Este es un decodificador hex a 7 segmento activo bajo (anodo comun)
	dec decodif
	(.d(d),
	.seg(a_to_g));
endmodule
