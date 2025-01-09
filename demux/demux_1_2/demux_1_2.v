module demux_1_2(
    input a,
    input F,
    output A,
    output B
);
assign A = (~a & F);
assign B = (a & F); 
endmodule
