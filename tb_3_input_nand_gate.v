`timescale 1ns / 1ps
module tb_3_input_nand_gate;
        // Inputs
	reg A, B, C;
        // Outputs
	wire Y;

        // Instantiate the Unit Under Test (UUT)
	nand3 uut (
		.A(A),
		.B(B),
		.C(C),
		.Y(Y)
	);
	
	initial begin
	$dumpfile("tb_3_input_nand_gate.vcd");
	$dumpvars(0,tb_3_input_nand_gate);
	// Initialize Inputs
	A = 0;
	B = 0;
	C = 0;
	#20 $finish;
	end

always #2 A = ~A;
always #1 B = ~B;
always #3 C = ~C;
endmodule

