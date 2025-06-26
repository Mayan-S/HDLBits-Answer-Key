module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    
    mod_a instance_name (
        .out1(out1), // Connects out1 of mod_a to out1 of top_module
        .out2(out2), // Connects out2 of mod_a to out2 of top_module
        .in1(a),     // Connects in1 of mod_a to a of top_module
        .in2(b),     // Connects in2 of mod_a to b of top_module
        .in3(c),     // Connects in3 of mod_a to c of top_module
        .in4(d)      // Connects in4 of mod_a to d of top_module
    );

endmodule
