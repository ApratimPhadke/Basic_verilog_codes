`timescale 1ns/1ps
module four_to_one_mux_tb;
    reg a, b, A, B, C, D;
    wire q;

    four_to_one_mux uut (
        .a(a),
        .b(b),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .q(q)
    );

    initial begin
        $dumpfile("four_to_one_mux.vcd");
        $dumpvars(0, four_to_one_mux_tb);

        a = 0; b = 0; A = 1; B = 0; C = 0; D = 0; #10;
        a = 0; b = 1; A = 0; B = 1; C = 0; D = 0; #10;
        a = 1; b = 0; A = 0; B = 0; C = 1; D = 0; #10;
        a = 1; b = 1; A = 0; B = 0; C = 0; D = 1; #10;

        $finish;
    end
endmodule


