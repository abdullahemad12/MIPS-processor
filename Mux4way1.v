/**
  * Mux 4x1 routes 1 bit
  *
  * Output Ports: 
  * 	-data_out: 1 bit 
  *
  * Input ports: 
  * 	-a: 1 bit to be routed according to sel
  *		-b: 1 bit to be routed according to sel
  *		-c: 1 bit to be routed according to sel
  *		-d: 1 bit to be routed according to sel
  *		-sel: 2 bit signal to chose between a or b (00 selects a, 01 selects b, 10 selects c, 11 selects d)
  *
  * Built using three 2X1 Mux
  *
  */


module Mux4way1(data_out, a, b, c, d, sel);

	output data_out; 
	input wire a, b, c, d;
	input wire[1:0] sel;
	wire  w1, w2; // w1 = M1.data_out w2 = M2.data_out

	Mux2way1 M1(w1, a, b, sel[0]);
	Mux2way1 M2(w2, c, d, sel[1]);
	Mux2way1 M_out(data_out, w1, w2, sel[1]);

endmodule