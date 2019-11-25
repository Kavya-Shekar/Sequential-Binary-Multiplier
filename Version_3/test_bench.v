`timescale 1 ns / 100 ps

module tb;
  reg clk,reset,write;
  reg [7:0] mul,b;
  wire [15:0] prod;
  reg test;
  integer i;
  initial begin $dumpfile("test_bench.vcd"); $dumpvars(0,tb); end
  initial begin reset = 1'b1; #10 reset = 1'b0; end
  initial begin write = 1'b1; #20 write = 1'b0; end
  initial clk = 1'b0; always #5 clk =~ clk;
  initial begin
    mul = 17;
    b = 16;
  end
  seq_mul seq_mul0 (clk, write, reset, mul, b, prod);
  initial begin
  #95 $finish;
  end
endmodule
