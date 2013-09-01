`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:25 08/19/2013 
// Design Name: 
// Module Name:    OM_MSD2 
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
//	for the second stage, don't need selection function and output z
//////////////////////////////////////////////////////////////////////////////////
module OM_MSD2(x,y,Ws_in,xY_in,yX_in,Ws_out,Wc_out);
localparam delay = 2;
	input [1:0] x;
	input [1:0] y;
	input [2:0] Ws_in;	//only needs 6-bit for 2nd stage
	//input [4:0] Wc_in;	//only needs 5-bit for 2nd stage
	input [2:0] xY_in;	//1-bit integer and 2-bit fraction
	input [2:0] yX_in;
	
	output [5:0] Ws_out;
	output [5:0] Wc_out;
	
	wire [4:0] xY,yX;	//should be 7-bits, but dont need MSB
	wire [4:0] temp_Wsout,temp_Wcout;
	
	reg [2:0] Ws_in_reg;
	//reg [5:0] Wc_in_reg;
	
	always @(*)
	begin
		Ws_in_reg <= #delay Ws_in;
	end
	
	//----------------------------------------------------------------------------
	genvar i;
	generate
		for (i=0;i<3;i=i+1)
		begin:XY		//fractional bits
			assign	xY[i] = (x[1] & ~x[0] & xY_in[i]) | (~x[1] & x[0] & ~xY_in[i]);
			assign	yX[i] = (y[1] & ~y[0] & yX_in[i]) | (~y[1] & y[0] & ~yX_in[i]);							
		end
	endgenerate
/*	assign xY[2] = (x[1] & ~x[0] & xY_in[2]) | (~x[1] & x[0] & ~xY_in[2]);
	assign yX[2] = (y[1] & ~y[0] & yX_in[2]) | (~y[1] & y[0] & ~yX_in[2]);*/			
	assign xY[4:3] = {xY[2],xY[2]};
	assign yX[4:3] = {yX[2],yX[2]};
	
	//-----------------------------------------------------------------------------
	
	////CSA_top #(6) CSA_MSD2(.a(xY),.b({Ws_in_reg,2'b0}),.c(6'b0),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));
	CSA_top #(5) CSA_MSD2(.a(xY),.b({Ws_in_reg,1'b0}),.c(4'b0),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));
	//CSA_MSD2 #(5) CSA_MSD_2(.a(xY),.b(Ws_in_reg),.c(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));
	
	assign Ws_out = {temp_Wsout,1'b0};
	assign Wc_out = {temp_Wcout,1'b0};
	


endmodule
