module mux_8_1(
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    input D8,
    input S1,
    input S2,
    input S3,
    output q
);
assign q= (~S1&~S2&~S3&D1)|(~S1&~S2&S3&D2)|(~S1&S2&~S3&D3)|(~S1&S2&S3&D4)|
         (S1&~S2&~S3&D5)|(S1&~S2&S3&D6)|(S1&S2&~S3&D7)|(S1&S2&S3&D8);
endmodule
