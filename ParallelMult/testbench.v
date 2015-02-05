`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:55 05/01/2014
// Design Name:   PM_sequential
// Module Name:   G:/FPGA/OnlineOperator/ParallelMult/ParallelMult_Complex4/testbench.v
// Project Name:  ParallelMult_Complex4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PM_sequential
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`define Clock 2
`define N 4
`define Permutation 10
module testbench;
localparam WL = `N * 2;

	// Inputs
	reg [WL-1:0] x;
	reg [WL-1:0] y;
	reg clk;
	reg rst;

	// Outputs
	wire [2*WL-1:0] z;
	
	//coefficients
	integer loopNo = 0;
	integer fp = 0;
	integer RecNo = 0;
	
	reg [WL-1:0] x_mem[`Permutation-1:0];
	reg [WL-1:0] y_mem[`Permutation-1:0];
	

	// Instantiate the Unit Under Test (UUT)
	PM_sequential uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		clk = 0;
		rst = 0;
		
		$readmemb("./MATLAB/Inputs/A_8.txt",y_mem);
		$readmemb("./MATLAB/Inputs/B_8.txt",x_mem);

		// Wait 100 ns for global reset to finish
		#(100*`Clock);
        
		// Add stimulus here
		rst = 1;
		#`Clock;
		
		/*for (loopNo=0;loopNo<`Permutation;loopNo=loopNo+1)
		begin
			x 	= x_mem[loopNo];
			y 	= y_mem[loopNo];
			#(`Clock*2);
			rst = 0;
			#(`Clock);
			rst = 1;
		end	*/		
		
		x=8'b10101010;
		y=8'b10001010;
		
		/*#`Clock;
		x=8'b10101010;
		y=8'b10000110;
		
		#`Clock;
		x=8'b10101010;
		y=8'b10000010;
		
		#`Clock;
		x=8'b01001010;
		y=8'b10100110;
		*/
		
			
		#(`Clock*10);
		$stop;

	end
	
	initial begin
		$timeformat(-9,3,"",8);
		fp=$fopen("./MATLAB/Data/Sum_PR_.txt");
		#(100*`Clock);
		#`Clock;
		#(1.5*`Clock);	//behavioural simulations
		//#(3.5*Clock);
		//#(Clock*5);
		for(RecNo=0;RecNo<`Permutation;RecNo=RecNo+1)
		begin
			#(0.1*`Clock);
			$fwrite(fp,"%b\n",z);
			#(`Clock*2.9);
		end
	end
	
	always begin
		#(`Clock*0.5) clk = ~clk;
	end
      
endmodule

