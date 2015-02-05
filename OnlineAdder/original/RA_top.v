`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:56 07/15/2013 
// Design Name: 
// Module Name:    RA_top 
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
//		Redundant Adder: top module
//////////////////////////////////////////////////////////////////////////////////
module RA_top(x,y,z,clk,nReset);
parameter Stage = 64;
parameter WL = Stage * 2;
	input [WL-1:0] x;
	input [WL-1:0] y;
	//output [WL-1:0] z;
	output [WL+1:0] z;
	input clk;
	input nReset;
	
	reg [WL-1:0] x_reg,y_reg;
	//reg [WL-1:1] z_reg;
	reg [WL+1:1] z_reg;
	
	wire [WL:1] temp_z;
	
	wire [Stage-1:0] h;
	
	//assign temp_z[0] = 1'b0;
//	RA_Main RA1(.x(x_reg[1:0]),.y(y_reg[1:0]),.hin(1'b0),.hout(h[0]),.zp(temp_z[1]),.zn(temp_z[2]));
//	RA_Main RA2(.x(x_reg[3:2]),.y(y_reg[3:2]),.hin(h[0]),.hout(h[1]),.zp(temp_z[3]),.zn(temp_z[4]));
	
	genvar gv_i;	//stage number
	
	generate
		for(gv_i=0; gv_i<Stage; gv_i=gv_i+1)
		begin:label
			if (gv_i==0)
				RA_Main RA(.x(x_reg[1:0]),.y(y_reg[1:0]),.hin(1'b0),.hout(h[0]),.zp(temp_z[1]),.zn(temp_z[2]));
			else
				RA_Main RA(.x(x_reg[2*gv_i+1:2*gv_i]),.y(y_reg[2*gv_i+1:2*gv_i]),.hin(h[gv_i-1]),.hout(h[gv_i]),.zp(temp_z[gv_i*2+1]),.zn(temp_z[gv_i*2+2]));
		end
	endgenerate
	
	always @ (posedge clk)
	begin
		if(~nReset)
			{x_reg,y_reg,z_reg}	<= 'b0;
		else begin
			//z_reg <= temp_z[WL-1:1];
			z_reg	<=	{h[Stage-1],temp_z[WL:1]};			
			x_reg	<=	x;
			y_reg	<= y;
		end		
	end

	assign z[WL+1:1] = z_reg;
	assign z[0]=1'b0;

endmodule
