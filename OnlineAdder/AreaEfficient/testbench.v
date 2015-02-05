`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:22:53 03/16/2014
// Design Name:   RA_Top
// Module Name:   G:/FPGA/OnlineOperator/OnlineAdder/RedundantAdder_Opt/RAnDigit/testbench.v
// Project Name:  RAnDigit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RA_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;
parameter Stage = 8;
localparam WL = Stage * 2;

	// Inputs
	reg [WL-1:0] x;
	reg [WL-1:0] y;
	reg cin1;
	reg cin2;
	reg clk;
	reg nReset;

	// Outputs
	wire [WL+1:0] z;
	
	// Design Parameters
	parameter Clock = 2.0;
	parameter Permutation = 10000;
	
	integer loopNo = 0;
	integer fp = 0;
	integer RecNo = 0;
	
	reg [WL-1:0] x_mem[Permutation-1:0];
	reg [WL-1:0] y_mem[Permutation-1:0];


	// Instantiate the Unit Under Test (UUT)
	RA_Top uut (
		.x(x), 
		.y(y), 
		.cin1(cin1), 
		.cin2(cin2), 
		.z(z), 
		.clk(clk), 
		.nReset(nReset)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		cin1 = 0;
		cin2 = 0;
		clk = 0;
		nReset = 0;
		
		$readmemb("./MATLAB/Inputs/A_8.txt",x_mem);
		$readmemb("./MATLAB/Inputs/B_8.txt",y_mem);

		// Wait 100 ns for global reset to finish
		#(100*Clock);
        
		// Add stimulus here
		nReset = 1;
		#Clock;
		
		for (loopNo=0;loopNo<Permutation;loopNo=loopNo+1)
		begin
			x 	= x_mem[loopNo];
			y 	= y_mem[loopNo];
			#(Clock*2);
			nReset = 0;
			#(Clock);
			nReset = 1;
		end
		//x=16'b1010000110000110;
		//y=16'b1000100101101000;
		//x=16'b0101010010010100;
		//y=16'b0100010000000010;
		
		#(Clock*10);
		$stop;

	end
	
	initial begin
		$timeformat(-9,3,"",8);
		fp=$fopen("./MATLAB/Data/Sum_WL8_T200.txt");
		#(100*Clock);
		#Clock;
		//#(1.5*Clock);	//behavioural simulations
		#(4*Clock);
		//#(Clock*2);
		for(RecNo=0;RecNo<Permutation;RecNo=RecNo+1)
		begin
			#(0.3*Clock);
			$fwrite(fp,"%b\n",z);
			#(Clock*2.7);
		end
	end
	
	always begin
		#(Clock*0.5) clk = ~clk;
	end
      
endmodule

