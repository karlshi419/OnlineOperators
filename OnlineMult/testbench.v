`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:19 07/19/2013
// Design Name:   OM_top
// Module Name:   G:/FPGA/OnlineOperator/OnlineMult/OM_MultStage/testbench.v
// Project Name:  OM_MultStage
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OM_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;
parameter Stage = 11;
parameter WL = 2*Stage;

	// Inputs
	reg [WL-1:0] x;
	reg [WL-1:2] y;
	reg clk;
	reg nReset;
	//reg [8*(Stage-1):0] xY;
	//reg [7*Stage-1:0] yX;
	reg [Stage*(Stage-1):0] xY;
	reg [Stage*(Stage-1)-1:0] yX;

	// Outputs
	wire [WL-1:0] z;
	
	//coefficients
	parameter Clock = 24;
	parameter Permutation = 9000;
	
	integer loopNo = 0;
	integer fp;
	integer RecNo = 0;
	
	reg [WL-1:0] x_mem[Permutation-1:0];
	reg [WL-1:0] y_mem[Permutation-1:0];
	
	reg [Stage*(Stage-1):0] xY_mem[Permutation-1:0];
	reg [Stage*(Stage-1)-1:0] yX_mem[Permutation-1:0];

	// Instantiate the Unit Under Test (UUT)
	//OM_top #(Stage) uut (
	OM_top uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.clk(clk), 
		.nReset(nReset),
		.xY(xY),
		.yX(yX)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;
		xY = 0;
		yX = 0;
		clk = 0;
		nReset = 0;
		
		$readmemb("./MATLAB/Inputs/A_8.txt",y_mem);
		$readmemb("./MATLAB/Inputs/B_8.txt",x_mem);
		
		$readmemb("./MATLAB/Inputs/A_TC_8.txt",xY_mem);	
		$readmemb("./MATLAB/Inputs/B_TC_8.txt",yX_mem);

		// Wait 100 ns for global reset to finish
		#(100*Clock);
        
		// Add stimulus here
		nReset = 1;
		
		#Clock;
		//#1;
		for (loopNo=0;loopNo<Permutation;loopNo=loopNo+1)
		begin
			x 	= x_mem[loopNo];
			y 	= y_mem[loopNo][WL-1:2];
			xY = xY_mem[loopNo];
			yX	= yX_mem[loopNo];
			#(Clock*2);
			nReset = 0;
			#(Clock);
			nReset = 1;
		end
//		#(Clock*10);
//		$stop;						
		
		
		// stage=8
/*		x = 16'b1001001001001010;
		y = 14'b00101001011000;
//		y=10'b0;
		xY = {	 
					 8'b10001110,
					 8'b10001110,
					 8'b10001100,
					 8'b10001000,
					 8'b10010000,
					 8'b10100000,
					 8'b10000000,
					 1'b1};
		//xY = 31'b0;
		yX = {	 
					 8'b10110111,
					 8'b10110110,
					 8'b10111000,
					 8'b10110000,
					 8'b11000000,
					 8'b11000000,
					 8'b10000000};*/
					 			 
		#(Clock*10);
		$stop;

	end
	
	initial begin
		$timeformat(-9,3,"",8);
		fp=$fopen("./MATLAB/Data/Sum_.txt");
		#(100*Clock);
		#Clock;
		//#(1.5*Clock);	//behavioural simulations
		//#(3.5*Clock);
		#(Clock*5);
		for(RecNo=0;RecNo<Permutation;RecNo=RecNo+1)
		begin
			#(0.1*Clock);
			$fwrite(fp,"%b\n",z);
			#(Clock*2.9);
		end
	end
	
	always begin
		#(Clock*0.5) clk = ~clk;
	end
      
endmodule

