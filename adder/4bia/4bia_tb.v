`timescale 1fs / 1fs

module look_ahead_carry_adder_tb;

    reg [3:0] A;      // 4-bit input A
    reg [3:0] B;      // 4-bit input B
    reg Cin;          // Input carry
    wire [3:0] Sum;   // 4-bit sum
    wire Cout;        // Carry-out

    // Instantiate the design under test (DUT)
    look_ahead_carry_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        // Dump waveform
        $dumpfile("look_ahead_carry_adder.vcd");
        $dumpvars(0, look_ahead_carry_adder_tb);

        // Test cases
        A = 4'b0001; B = 4'b0010; Cin = 1'b0; #10; // Test 1
        A = 4'b0101; B = 4'b0011; Cin = 1'b1; #10; // Test 2
        A = 4'b1111; B = 4'b1111; Cin = 1'b0; #10; // Test 3
        A = 4'b1010; B = 4'b0101; Cin = 1'b1; #10; // Test 4

        $finish;
    end

endmodule
