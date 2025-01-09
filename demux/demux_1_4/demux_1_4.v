module demux_1_4(
    input a,
    input b,
    input F,
    output A,
    output B,
    output C,
    output D
);
assign A = (~a & ~b & F);
assign B = (~a & b & F);
assign C = (a & ~b & F);
assign D = (a & b & F);
endmodule