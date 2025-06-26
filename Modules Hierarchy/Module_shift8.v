module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    // Declare internal wire vectors to connect the D flip-flops
    wire [7:0] q1, q2, q3;

    // Instantiate the first set of 8 D flip-flops
    my_dff8 dff1 (
        .clk(clk), 
        .d(d), 
        .q(q1)
    );

    // Instantiate the second set of 8 D flip-flops
    my_dff8 dff2 (
        .clk(clk), 
        .d(q1), 
        .q(q2)
    );

    // Instantiate the third set of 8 D flip-flops
    my_dff8 dff3 (
        .clk(clk), 
        .d(q2), 
        .q(q3)
    );

    // Multiplexer using conditional operator
    assign q = (sel == 2'b00) ? d :
               (sel == 2'b01) ? q1 :
               (sel == 2'b10) ? q2 :
               q3;

endmodule
