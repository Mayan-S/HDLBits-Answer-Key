module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    // Internal wires to connect the carry-out and sums
    wire carry0, carry1;
    wire [15:0] sum0, sum1;

    // First 16-bit adder for the lower 16 bits
    add16 adder1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),      // No carry-in for the first adder
        .sum(sum[15:0]),
        .cout(carry0)    // Carry-out to be used for selection
    );

    // Second 16-bit adder assuming carry-in = 0
    add16 adder2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum0),
        .cout(carry1)    // Carry-out is ignored
    );

    // Third 16-bit adder assuming carry-in = 1
    add16 adder3 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum1),
        .cout()          // Carry-out is ignored
    );

    // 16-bit 2-to-1 multiplexer to select the correct sum
    assign sum[31:16] = carry0 ? sum1 : sum0;
    
endmodule
