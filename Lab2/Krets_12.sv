// Krets_12 module
module Krets_12 (
	input wire EN2, EN1, 
	input wire DI3, DI2, DI1, DI0, 
	output wire CO,
	output wire DO3, DO2, DO1, DO0
);

wire c1, c2, c3; 
wire w1, w2, w3, w4;

xor(w1, DI0, EN1);
xor(w2, DI1, EN1);
xor(w3, DI2, EN1);
xor(w4, DI3, EN1);

half_adder add0 (DO0, c1, w1, EN2);
half_adder add1 (DO1, c2, w2, c1);
half_adder add2 (DO2, c3, w3, c2);
half_adder add3 (DO3,  CO, w4, c3); 

endmodule


// Half-adder module
module half_adder(
	output wire res, co, 
	input wire a,b
);
	xor(res, a, b);
	and(co, a, b);
endmodule
