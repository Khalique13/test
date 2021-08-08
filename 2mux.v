// Switch-level description of a 1-bit 2-1 multiplexer
// ctrl=0, out=in1; ctrl=1, out=in2

module mux21_sw (out, ctrl, in1, in2);
   
   output out;                    // mux output
   input  ctrl, in1, in2;         // mux inputs
   wire	  w;                      // internal wire
   
   inv_sw I1 (w, ctrl);           // instantiate inverter module
   
   cmos C1 (out, in1, w, ctrl);   // instantiate cmos switches
   cmos C2 (out, in2, ctrl, w);
   
endmodule