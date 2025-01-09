module p1(
    input a,
    input b,
    input c,
    input d,
    output q
);
wire and1_out , and2_out;
and and1(and1_out , a , b);

and and2(and2_out ,c ,d);

or or1(q , and1_out , and2_out);

endmodule