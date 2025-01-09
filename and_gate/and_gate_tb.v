`timescale 1ps/1ps
module and_gate_tb;
    reg a,b;
    wire c;
    and_gate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    initial begin 
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        a=0; b=0; #10
        a=0; b=1; #10
        a=1; b=0; #10
        a=1; b=1; #10

        $finish;
    end
endmodule 