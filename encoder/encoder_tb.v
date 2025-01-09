`timescale 1ns/1ps

module priority_encoder_8_to_3_tb;
    reg [7:0] in;
    wire [2:0] out;

    priority_encoder_8_to_3 uut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("priority_encoder_8_to_3.vcd");
        $dumpvars(0, priority_encoder_8_to_3_tb);

        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;
        in = 8'b00000011; #10;
        in = 8'b00000111; #10;
        in = 8'b00001111; #10;
        in = 8'b00011111; #10;
        in = 8'b00111111; #10;
        in = 8'b01111111; #10;
        in = 8'b11111111; #10;

        $finish;
    end
endmodule
