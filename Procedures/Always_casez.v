module top_module (
    input [7:0] in,
    output reg [2:0] pos );

    always @(*) begin
        casez (in)
            8'b????_???1: pos = 3'd0; // If bit[0] is 1
            8'b????_??10: pos = 3'd1; // If bit[1] is 1
            8'b????_?100: pos = 3'd2; // If bit[2] is 1
            8'b????_1000: pos = 3'd3; // If bit[3] is 1
            8'b???1_0000: pos = 3'd4; // If bit[4] is 1
            8'b??10_0000: pos = 3'd5; // If bit[5] is 1
            8'b?100_0000: pos = 3'd6; // If bit[6] is 1
            8'b1000_0000: pos = 3'd7; // If bit[7] is 1
            default:      pos = 3'd0; // If no bits are set
        endcase
    end
    
endmodule
