`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:47 01/13/2015 
// Design Name: 
// Module Name:    PM_sequential 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PM_sequential(x, y, z, clk, rst);
	parameter N = 4;
	localparam WL = N * 2;

	input  [WL-1:0] x,y;
	output [2*WL-1:0] z;
	
	input clk, rst;
	
	reg [WL-1:0] x_reg, y_reg;
	reg [2*WL-1:0] z;
	
	wire [2*WL-1:0] temp_z;
	
	
	//---- connect PM module ----
	(* KEEP_HIERARCHY="true" *)
	PM_top #(N) PM(.x(x_reg), .y(y_reg), .z(temp_z));
		
	always @ (posedge clk)
	begin
		if(!rst) begin
			x_reg <= 0;
			y_reg <= 0;
			z <= 0;
		end
		else begin
			z <= temp_z;
			x_reg <= x;
			y_reg <= y;
		end
	end
	
	//assign z = z_reg;

endmodule
