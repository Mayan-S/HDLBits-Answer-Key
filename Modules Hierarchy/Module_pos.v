module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
    
    mod_a instance_name (
        out1, // Connects to the first output of mod_a
        out2, // Connects to the second output of mod_a
        a,    // Connects to the first input of mod_a
        b,    // Connects to the second input of mod_a
        c,    // Connects to the third input of mod_a
        d     // Connects to the fourth input of mod_a
    );

endmodule
