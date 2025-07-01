// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);

    // Using continuous assignment for the wire output
    assign out_assign = a & b;

    // Using a combinational always block for the reg output
    always @(*) begin
        out_alwaysblock = a & b;
    end
    
endmodule
