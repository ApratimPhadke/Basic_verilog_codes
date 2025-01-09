`timescale 1fs/1fs
module halfadder_tb;
    reg a, b;
    wire s, c;

    halfadder uut (
        .a(a),
        .b(b),
        .s(s),
        .c(c)
    );

    initial begin
        $dumpfile("halfadder.vcd");
        $dumpvars(0, halfadder_tb);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
