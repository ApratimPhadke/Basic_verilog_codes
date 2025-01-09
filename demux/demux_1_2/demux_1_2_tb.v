`timescale 1ps/1ps
module demux_1_2_tb;
    reg a,F;
    wire A,B;
    demux_1_2 uut(
        .a(a),
        .F(F),
        .A(A),
        .B(B)
    );
    initial begin
        $dumpfile("demux_1_2.vcd");
        $dumpvars(0,demux_1_2_tb);

        a=0; F=0; #10;
        a=0; F=1; #10;
        a=1; F=0; #10;
        a=1; F=1; #10;

        $finish;
    end
endmodule
