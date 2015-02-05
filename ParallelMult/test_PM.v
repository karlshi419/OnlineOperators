`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:50:02 04/28/2014
// Design Name:   PM_top
// Module Name:   G:/FPGA/OnlineOperator/ParallelMult/ParallelMult_Complex1/test_PM.v
// Project Name:  ParallelMult_Complex1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PM_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`define Clock 20

module test_PM;

	// Inputs
	reg [7:0] x;
	reg [7:0] y;

	// Outputs
	wire [15:0] z;

	// Instantiate the Unit Under Test (UUT)
	PM_top uut (
		.x(x), 
		.y(y), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		x=8'b10101010;
		y=8'b10001010;
		
		#`Clock;
		x=8'b10101010;
		y=8'b10000110;
		
		#`Clock;
		x=8'b10101010;
		y=8'b10000010;
		
		#`Clock;
		x=8'b01001010;
		y=8'b10100110;
		
		#`Clock;
		$stop;
		

	end
      
endmodule

