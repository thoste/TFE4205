module mux_21 (
	input wire data0[busWidth-1:0], data1[busWidth-1:0], sel, 
	output reg dataOut[busWidth-1:0]
);

parameter busWidth = 40;

always_comb begin : MUX
	if(sel == 1'b0) begin
		dataOut[busWidth-1:0] = data0[busWidth-1:0];
	end
	else begin
		dataOut[busWidth-1:0] = data1[busWidth-1:0];
	end
end

endmodule 