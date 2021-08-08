`timescale 1ns/1ps
module tb_inv;
	//inputs
	reg inv_in;
	//outputs
	wire inv_out;
	
	//Instantiate the unit under test
	inv uut (
		.inv_in(inv_in),
		.inv_out(inv_out)
	);
	initial begin
	$dumpfile("tb_inv.vcd");
	$dumpvars(0,tb_inv);
	//ialixze inputs
	inv_in = 0;
	#8 $finish;
	end
always #2 inv_in = ~inv_in;
endmodule