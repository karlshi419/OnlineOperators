`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:54:09 08/10/2013
// Design Name:   Mult_top
// Module Name:   G:/FPGA/Multiplier/CoreGen_Mult/testbench.v
// Project Name:  CoreGen_Mult
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mult_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;
parameter WL = 13;
	// Inputs
	reg [WL-1:0] A;
	reg [WL-1:0] B;
	reg clk;
	reg nReset;

	// Outputs
	wire [WL*2-1:0] Sum;
	
	parameter Clock = 2.6;
	parameter Permutation = 10000;
	
	integer loopNo = 0;
	integer fp;
	integer RecNo = 0;
	
	reg [WL-1:0] A_mem[Permutation-1:0];
	reg [WL-1:0] B_mem[Permutation-1:0];

	// Instantiate the Unit Under Test (UUT)
	Mult_top uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.nReset(nReset), 
		.Sum(Sum)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		clk = 0;
		nReset = 0;
		
		$readmemb("./MATLAB/Inputs/A_13.txt",A_mem);
		$readmemb("./MATLAB/Inputs/B_13.txt",B_mem);

		// Wait 100 ns for global reset to finish
		#(100*Clock);
        
		// Add stimulus here
		nReset = 1;
		#Clock;
		
		for(loopNo=0;loopNo<Permutation;loopNo=loopNo+1)
		begin
			A = A_mem[loopNo];
			B = B_mem[loopNo];
			#(Clock*2);
			nReset = 0;
			#(Clock);
			nReset = 1;
		end
		#(Clock*10);
		$stop;
	end
	
	initial begin
		$timeformat(-9,3,"",8);
		fp=$fopen("./MATLAB/Data/Sum_T.txt");
		#(Clock*100);
		#Clock;
		#(Clock*1.5);
		for(RecNo=0;RecNo<Permutation;RecNo=RecNo+1)
		begin
			#(Clock*0.2);
			$fwrite(fp,"%d\n",Sum);
			#(Clock*2.8);
		end
	end
	
	always begin
		#(Clock*0.5) clk=~clk;
	end
			
endmodule

