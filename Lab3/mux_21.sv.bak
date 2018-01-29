module mux_21 (
	input wire data0[39:0], data1[39:0], sel, 
	output reg dataOut[39:0]
);

always_comb begin : MUX
	if(sel == 1'b0) begin
		dataOut[39:0] = data0[39:0];
	end
	else begin
		dataOut[39:0] = data1[39:0];
	end
end

endmodule 