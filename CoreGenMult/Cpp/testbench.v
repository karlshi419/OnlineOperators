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
//parameter WL = 9;
//Change WL

	// Inputs
	reg [WL-1:0] A;
	reg [WL-1:0] B;
	reg clk;
	reg nReset;

	// Outputs
	wire [WL*2-1:0] Sum;
	
	//parameter Clock = 2.8;
	//Change Clock
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
		
		//$readmemb("./MATLAB/Inputs/A_9.txt",A_mem);
		//Change Input A

		//$readmemb("./MATLAB/Inputs/B_9.txt",B_mem);
		//Change Input B

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
		$finish;
	end
	
	initial begin
		$timeformat(-9,3,"",8);
		//fp=$fopen("./MATLAB/Data/Sum_T.txt");
		//Change Output

		#(Clock*100);
		//#Clock;
		//#(Clock*2.5);
		//Change RstClk

		for(RecNo=0;RecNo<Permutation;RecNo=RecNo+1)
		begin
			//#(Clock*0.2);
			//Change LoopClk1

			$fwrite(fp,"%d\n",Sum);
			//#(Clock*2.8);
			//Change LoopClk2
		end
	end
	
	always begin
		#(Clock*0.5) clk=~clk;
	end
			
endmodule

