`timescale 1ns/1ps
module nand_gate_tb;
    reg a,b;
    wire c;
    nand_gate uut(
        .a(a),
        .b(b),
        .c(c)
    );
    initial begin 
        $dumpfile ("nand_gate.vcd");
        $dumpvars ( 0,nand_gate_tb);

        a=0; b=0; #10
        a=0; b=0; #10
        a=0; b=0; #10
        a=0; b=0; #10

        $finish;
    end
endmodule