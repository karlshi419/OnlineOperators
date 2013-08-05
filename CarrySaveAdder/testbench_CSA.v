`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:23:43 07/18/2013
// Design Name:   CSA_top
// Module Name:   G:/FPGA/OnlineOperator/OnlineMult/OM_recurrence/testbench_CSA.v
// Project Name:  OM_recurrence
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CSA_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench_CSA;
parameter Stage = 3;
parameter WL = Stage;

	// Inputs
	reg [WL-1:0] a;
	reg [WL-1:0] b;
	reg [WL-1:0] c;
	reg [WL-1:0] d;
	reg cin1;
	reg cin2;
	reg clk;
	reg nReset;

	// Outputs
	wire [WL-1:0] Ws;
	wire [WL-1:0] Wc;
	
	parameter Clock = 10;

	// Instantiate the Unit Under Test (UUT)
	CSA_top uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.cin1(cin1), 
		.cin2(cin2), 
		.Ws(Ws), 
		.Wc(Wc), 
		.clk(clk), 
		.nReset(nReset)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		cin1 = 0;
		cin2 = 0;
		clk = 0;
		nReset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		nReset = 1;
		a = 3'b000;
		b = 3'b001;
		c = 3'b110;
		d = 3'b110;
		cin1=1;
		cin2=1;
		

	end
	
	always begin
		#(Clock*0.5) clk=~clk;
	end
      
endmodule

