module four_to_one_mux(
    input a,
    input b,
    input A,
    input B,
    input C,
    input D,
    output q
);
    assign q = (~a & ~b & A) | (~a & b & B) | (a & ~b & C) | (a & b & D);
endmodule
