module top_module ( input a, input b, output out );
	
    mod_a instance_name (
        .in1(a),   // Connect input a to in1 of mod_a
        .in2(b),   // Connect input b to in2 of mod_a
        .out(out)  // Connect the output of mod_a to out
    );
    
endmodule
