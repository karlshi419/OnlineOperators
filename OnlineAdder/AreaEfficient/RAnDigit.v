`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:19 03/13/2014 
// Design Name: 
// Module Name:    RA4digit 
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
module RAnDigit(x,y,cin1,cin2,z);
parameter Stage = 6;
localparam WL = 2*Stage;

	input [WL-1:0] x,y;
	input cin1,cin2;
	output [WL+1:0] z;

	
//	TopBottom TB(	.x1(x[7:6]),.x2(x[5:4]),
//						.y1(y[7:6]),.y2p(y[5]),
//						.z1(z[9:8]),.z2p(z[7]),
//						.xL(x[1:0]),.yL(y[1:0]),.zL(z[2:1]),.cin(cin1),.s2(1'b0));

	TopBottom TB(	.x1(x[WL-1:WL-2]),.x2(x[WL-3:WL-4]),
						.y1(y[WL-1:WL-2]),.y2p(y[WL-3]),
						.z1(z[WL+1:WL]),.z2p(z[WL-1]),
						.xL(x[1:0]),.yL(y[1:0]),.zL(z[2:1]),.cin(cin1),.s2(1'b0));
						
//	Slice S1(.x1(x[5:4]),.x2(x[3:2]),.x3(x[1:0]),
//				.y1(y[5:4]),.y2(y[3:2]),.y3p(y[1]),
//				.z1(z[6:5]),.z2(z[4:3]),.s2(1'b0));
				
	genvar s;	// slice number
	
	generate
		for(s=1;s<(Stage/2);s=s+1)
		begin:Slice_no
			Slice S_carry(	.x1(x[4*s+1:4*s]),.x2(x[4*s-1:4*s-2]),.x3(x[4*s-3:4*s-4]),
								.y1(y[4*s+1:4*s]),.y2(y[4*s-1:4*s-2]),.y3p(y[4*s-3]),
								.z1(z[4*s+2:4*s+1]),.z2(z[4*s:4*s-1]),
								.s2(1'b0));
		end
	endgenerate

	assign z[0] = cin2;

endmodule
