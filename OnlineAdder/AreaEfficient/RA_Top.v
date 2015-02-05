`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    16:31:48 03/14/2014
// Design Name:
// Module Name:    RA_Top
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
module RA_Top(x,y,z,clk);
parameter Stage = 8;
localparam WL = 2*Stage;

	input [WL-1:0] x,y;
	//input cin2;
	input clk;
	//input nReset;
	output [WL+1:1] z;

	reg [WL-1:0] x_reg,y_reg;
	reg [WL+1:1] z_reg;

	wire [WL+1:1] temp_z;

	TopBottom TB(	.x1(x_reg[WL-1:WL-2]),.x2(x_reg[WL-3:WL-4]),
						.y1(y_reg[WL-1:WL-2]),.y2p(y_reg[WL-3]),
						.z1(temp_z[WL+1:WL]),.z2p(temp_z[WL-1]),
						.xL(x_reg[1:0]),.yL(y_reg[1:0]),.zL(temp_z[2:1]));

	genvar s;	// slice number

	generate
		for(s=1;s<(Stage/2);s=s+1)
		begin:Slice_no
			Slice S_carry(	.x1(x_reg[4*s+1:4*s]),.x2(x_reg[4*s-1:4*s-2]),.x3(x_reg[4*s-3:4*s-4]),
								.y1(y_reg[4*s+1:4*s]),.y2(y_reg[4*s-1:4*s-2]),.y3p(y_reg[4*s-3]),
								.z1(temp_z[4*s+2:4*s+1]),.z2(temp_z[4*s:4*s-1]),
								.s2(1'b0));
		end
	endgenerate

	//assign temp_z[0] = cin2;
	//assign temp_z[0] = 1'b0;


	//always @ (posedge clk or negedge nReset)
	always @ (posedge clk)
	begin
			z_reg	<=	temp_z;
			x_reg	<=	x;
			y_reg	<= y;
	end

	assign z = z_reg;

endmodule
