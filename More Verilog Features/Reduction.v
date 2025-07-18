module top_module (
    input [7:0] in,
    output parity); 
    
    // Compute even parity
    assign parity = ^in;

endmodule
