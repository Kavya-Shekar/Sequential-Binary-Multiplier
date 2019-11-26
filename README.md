# Sequential Binary Multiplier

8x8 sequential multiplier which mimics the algorithm we learned in grammar school.
- Implementation using D-flip flops with reset and load (dfrl).
- Applicable for multiplication of 2 positive integers.

## Version 2
The Multiplicand register, ALU, and Multiplier register are all 8 bits wide, with only the Product register left at 16 bits. 
At every clock cycle the right-most bit of the Multiplier is checked. If the bit is 1, Multiplicand is added to the left most bits of the
Product register, else the Product register is retained. 
The Product and Multiplier register is shifted to the right by one bit in every clock cycle.

![Logic circuit](https://github.com/Kavya-Shekar/Sequential-Binary-Multiplier/blob/master/Version_2/Logic_circuit.png)

## Version 3
The Multiplicand register, ALU, and Multiplier register are all 8 bits wide, with only the Product register left at 16 bits. 
The separate multiplier register is replaced by placing it in the right half of the Product register. 
The Product register is shifted to the right by one bit in every clock cycle.


![Logic circuit](https://github.com/Kavya-Shekar/Sequential-Binary-Multiplier/blob/master/Version_3/Logic_circuit.png)

## How do you run the file
- You need to have Icarus Verilog installed in order to run the files.
- Run the following commands in your terminal :
```
> iverilog -o multiplier lib.v multiplier.v test_bench.v
> vvp multiplier
> gtkwave test_bench.vcd
```
