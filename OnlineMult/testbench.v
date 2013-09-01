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
parameter Stage_all = 11;
parameter N = Stage_all-3;

parameter WL = 2*N;
parameter WL_out = 2*Stage_all;

	// Inputs
	reg [WL-1:0] x;
	reg [WL-1:2] y;
	reg clk;
	reg nReset;

	//reg [Stage*Stage:0] xY;
	//reg [Stage*Stage-2:0] yX;
	
	reg [(N+1)*(N-3)+8:0] xY;		//each input contains #N fractional bits and 1 integer bit, 1st stage only contains 2 bits
	reg [(N+1)*(N-3)+6:0] yX;

	// Outputs
	wire [WL_out-1:0] z;
	
	//coefficients
	parameter Clock = 1.5;
	//parameter Permutation = 1000000;
	parameter Permutation = 10000;
	
	integer loopNo = 0;
	integer fp;
	integer RecNo = 0;
	
	reg [WL-1:0] x_mem[Permutation-1:0];
	reg [WL-1:0] y_mem[Permutation-1:0];
	
	reg [(N+1)*(N-3)+8:0] xY_mem[Permutation-1:0];
	reg [(N+1)*(N-3)+6:0] yX_mem[Permutation-1:0];

	// Instantiate the Unit Under Test (UUT)
	//OM_top uut (
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
		
		// stage=4
		//x = 16'b1001001001001010;
		//y = 14'b00101001011000;
		x = 8'b01001010;
		y = 6'b011000;
		xY = {	 
					 5'b01001,
					 4'b0101,
					 3'b010,
					 2'b01};
		//xY = 31'b0;
		yX = {	 
					 5'b01100,
					 4'b0110,
					 3'b010};
/*		x = 16'b0100010101010110;			 			
		y = 16'b0000000110100101;
		xY = 65'b10011010010011010010011010010011100010011000010010000010100000011;
		yX = 63'b000000100000000100000001000000010000000100000001000000010000000;*/
		#(Clock*10);
		$stop;

	end
	
	initial begin
		$timeformat(-9,3,"",8);
		fp=$fopen("./MATLAB/Data/Sum_PR_.txt");
		#(100*Clock);
		#Clock;
		#(1.5*Clock);	//behavioural simulations
		//#(3.5*Clock);
		//#(Clock*5);
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

