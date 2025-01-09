module demux_1_8(
    input a,
    input b,
    input c,
    input D,
    output Y1,
    output Y2,
    output Y3,
    output Y4,
    output Y5,
    output Y6,
    output Y7,
    output Y8
);
assign Y1 = (~a & ~b & ~c & D);
assign Y2 = (~a & ~b & c & D);
assign Y3 = (~a & b & ~c & D);
assign Y4 = (~a & b & c & D);
assign Y5 = (a & ~b & ~c & D);
assign Y6 = (a & ~b & c & D);
assign Y7 = (a & b & ~c & D);
assign Y8 = (a & b & c & D);
endmodule
