// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );

    // Using continuous assignment for the wire output
    assign out_assign = a ^ b;

    // Using a combinational always block for the reg output
    always @(*) begin
        out_always_comb = a ^ b;
    end

    // Using a clocked always block for the reg output
    always @(posedge clk) begin
        out_always_ff <= a ^ b;
    end
    
endmodule
