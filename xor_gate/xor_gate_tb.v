`timescale 1ps/1ps
module xor_gate_tb;
    reg a, b;
    wire c;

    xor_gate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin
        $dumpfile("xor_gate.vcd");
        $dumpvars(0, xor_gate_tb);
        a = 0; b = 1; #5;
        a = 0; b = 0; #5;
        a = 1; b = 1; #5;
        a = 1; b = 0; #5;
        $finish;
    end
endmodule
