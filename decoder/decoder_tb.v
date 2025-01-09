`timescale 1ns/1ps

module decoder_3_to_8_tb;
    reg [2:0] in;
    wire [7:0] out;

    decoder_3_to_8 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("decoder_3_to_8.vcd");
        $dumpvars(0, decoder_3_to_8_tb);

        in = 3'b000; #10;
        in = 3'b001; #10;
        in = 3'b010; #10;
        in = 3'b011; #10;
        in = 3'b100; #10;
        in = 3'b101; #10;
        in = 3'b110; #10;
        in = 3'b111; #10;

        $finish;
    end
endmodule
