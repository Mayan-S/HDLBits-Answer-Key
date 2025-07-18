module top_module ( input clk, input d, output q );

        // Declare internal wires to connect the D flip-flops
    wire q1, q2;

    // Instantiate the first D flip-flop
    my_dff dff1 (
        .clk(clk), 
        .d(d), 
        .q(q1)
    );

    // Instantiate the second D flip-flop
    my_dff dff2 (
        .clk(clk), 
        .d(q1), 
        .q(q2)
    );

    // Instantiate the third D flip-flop
    my_dff dff3 (
        .clk(clk), 
        .d(q2), 
        .q(q)
    );
    
endmodule
