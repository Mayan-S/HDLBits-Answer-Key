module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    // Internal wires for the inverted b input
    wire [31:0] b_xor;

    // XOR b with sub to conditionally invert b
    assign b_xor = b ^ {32{sub}};

    // Internal wire to connect the carry-out of the first adder to the carry-in of the second adder
    wire carry;

    // Instantiate the first 16-bit adder for the lower 16 bits
    add16 adder1 (
        .a(a[15:0]),
        .b(b_xor[15:0]),
        .cin(sub),       // Use sub as the carry-in
        .sum(sum[15:0]),
        .cout(carry)     // Connect carry-out to the next adder
    );

    // Instantiate the second 16-bit adder for the upper 16 bits
    add16 adder2 (
        .a(a[31:16]),
        .b(b_xor[31:16]),
        .cin(carry),     // Carry-in from the first adder
        .sum(sum[31:16]),
        .cout()          // Carry-out is ignored
    );

endmodule
