module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    // Internal wire to connect the carry-out of the first adder to the carry-in of the second adder
    wire carry;

    // Instantiate the first 16-bit adder for the lower 16 bits
    add16 adder1 (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),      // No carry-in for the first adder
        .sum(sum[15:0]),
        .cout(carry)     // Connect carry-out to the next adder
    );

    // Instantiate the second 16-bit adder for the upper 16 bits
    add16 adder2 (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry),     // Carry-in from the first adder
        .sum(sum[31:16]),
        .cout()          // Carry-out is ignored
    );

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

    // Full adder logic
    assign sum = a ^ b ^ cin;       // Sum is the XOR of a, b, and cin
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry-out logic
    
endmodule
