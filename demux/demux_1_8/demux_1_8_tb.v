`timescale 1ps/1ps
module demux_1_8_tb;
    reg a,b,c,D;
    wire Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8;
    demux_1_8 uut(
        .a(a),
        .b(b),
        .c(c),
        .D(D),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .Y7(Y7),
        .Y8(Y8)
    );
    initial begin
        $dumpfile("demux_1_8.vcd");
        $dumpvars(0,demux_1_8_tb);

        a=0; b=0; c=0; D=0; #10;
        a=0; b=0; c=0; D=1; #10;
        a=0; b=0; c=1; D=0; #10;
        a=0; b=0; c=1; D=1; #10;
        a=0; b=1; c=0; D=0; #10;
        a=0; b=1; c=0; D=1; #10;
        a=0; b=1; c=1; D=0; #10;
        a=0; b=1; c=1; D=1; #10;
        a=1; b=0; c=0; D=0; #10;
        a=1; b=0; c=0; D=1; #10;
        a=1; b=0; c=1; D=0; #10;
        a=1; b=0; c=1; D=1; #10;
        a=1; b=1; c=0; D=0; #10;
        a=1; b=1; c=0; D=1; #10;
        a=1; b=1; c=1; D=0; #10;
        a=1; b=1; c=1; D=1; #10;
        $finish;
    end
endmodule
