`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:00 08/19/2013 
// Design Name: 
// Module Name:    OM_MSD3 
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
//		3rd stage, don't need selection function and output z
//////////////////////////////////////////////////////////////////////////////////
module OM_MSD3(x,y,Ws_in,Wc_in,xY_in,yX_in,Ws_out,Wc_out);
localparam delay =2;
	input [1:0] x,y;
	input [5:0] Ws_in,Wc_in;
	input [3:0] xY_in,yX_in;
	
	output [6:0] Ws_out,Wc_out;
	
	wire [6:0] xY,yX;
	wire [6:0] temp_Wsout,temp_Wcout;
	reg [5:0] Ws_in_reg,Wc_in_reg;
	
	always @(*)
	begin
		Ws_in_reg <= #delay Ws_in;
		Wc_in_reg <= #delay Wc_in;
	end
	
	genvar i;
	generate
		for (i=0;i<4;i=i+1)
		begin:XY		//fractional bits
			assign	xY[i] = (x[1] & ~x[0] & xY_in[i]) | (~x[1] & x[0] & ~xY_in[i]);
			assign	yX[i] = (y[1] & ~y[0] & yX_in[i]) | (~y[1] & y[0] & ~yX_in[i]);							
		end
	endgenerate
/*	assign xY[3] = (x[1] & ~x[0] & xY_in[3]) | (~x[1] & x[0] & ~xY_in[3]);
	assign yX[3] = (y[1] & ~y[0] & yX_in[3]) | (~y[1] & y[0] & ~yX_in[3]);	*/		
	assign xY[6:4] = {xY[3],xY[3],xY[3]};
	assign yX[6:4] = {yX[3],yX[3],yX[3]};
	
	//CSA_top #(7) CSA_MSD2(.a(xY),.b({Ws_in_reg,1'b0}),.c({Wc_in_reg,1'b0}),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));
	CSA_top #(7) CSA_MSD2(.a(xY),.b({Ws_in_reg}),.c({Wc_in_reg}),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));
	
	assign Ws_out = temp_Wsout;
	assign Wc_out = temp_Wcout;

endmodule
