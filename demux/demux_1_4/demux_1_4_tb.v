`timescale 1ps/1ps
module demux_1_4_tb;
    reg a,b,F;
    wire A,B,C,D;
    demux_1_4 uut(
        .a(a),
        .b(b),
        .F(F),
        .A(A),
        .B(B),
        .C(C),
        .D(D)
    );
    initial begin
        $dumpfile("demux_1_4.vcd");
        $dumpvars(0,demux_1_4_tb);

        a=0; b=0; F=0; #10;
        a=0; b=0; F=1; #10;
        a=0; b=1; F=0; #10;
        a=0; b=1; F=1; #10;
        a=1; b=0; F=0; #10;
        a=1; b=0; F=1; #10;
        a=1; b=1; F=0; #10;
        a=1; b=1; F=1; #10;
        $finish;
    end
endmodule
