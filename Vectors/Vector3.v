module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    wire [31:0] wire1={a,b,c,d,e,f,2'b11};
    
    assign w = wire1[31:24];
    assign x = wire1[23:16];
    assign y = wire1[15:8];
    assign z = wire1[7:0]; 

endmodule
