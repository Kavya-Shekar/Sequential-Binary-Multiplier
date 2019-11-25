`timescale 1 ns / 100 ps
`define TESTVECS 9

module tb;
  reg clk,reset;
  reg [7:0] mul,b;
  wire [15:0] prod;
  reg test;
  integer i;
  initial begin $dumpfile("test_bench.vcd"); $dumpvars(0,tb); end
  initial begin reset = 1'b1; #20 reset = 1'b0; end
  initial clk = 1'b0; always #5 clk =~ clk;
  initial begin
    mul = 37;
    b = 16;
  end
  seq_mul seq_mul0 (clk, reset, test, mul, b, prod);
  initial begin
    for(i=0;i<`TESTVECS;i=i+1)
      begin #10 test = b[i]; end
    $finish;
  end
endmodule
