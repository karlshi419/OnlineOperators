`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:38 07/18/2013 
// Design Name: 
// Module Name:    OM_Main 
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
module OM_Main(x,y,Ws_in,Wc_in,xY_in,yX_in,z,Ws_out,Wc_out);
parameter WL_XY = 8;	//word-length of xY and yX
localparam delay = 2;	
	input [1:0] x;
	input [1:0] y;
	input [WL_XY+4:0] Ws_in;
	input [WL_XY+4:0] Wc_in;
	input [WL_XY-1:0] xY_in,yX_in;
	output [1:0] z;
	output [WL_XY+4:0] Ws_out;
	output [WL_XY+4:0] Wc_out;	
	
	wire [WL_XY+4:0] xY,yX;
	wire [WL_XY+4:0] temp_Wsout,temp_Wcout;
	wire [WL_XY+4:0] Wsout_sft,Wcout_sft;		//the shifted output
	
	wire [2:0] Ws_sel,Wc_sel;		//truncate bits to select z
	wire [3:0] W;
	//reg [3:0] W;			//for behavioural simulation
	wire [1:0] temp_z;				//selected output z
	wire temp_p;
	
	reg [WL_XY+4:0] Ws_in_reg = 0;
	reg [WL_XY+4:0] Wc_in_reg = 0;
	always @(*)
	begin
		Ws_in_reg <= #delay Ws_in;
		Wc_in_reg <= #delay Wc_in;
	end
	
	assign Ws_sel = temp_Wsout[WL_XY+4:WL_XY+2];	//truncate, only use 3 bits
	assign Wc_sel = temp_Wcout[WL_XY+4:WL_XY+2];	//truncate, only use 3 bits
	
	//------------------------------------------------------------------------------------------------
	//Input processing to generate xY
	//------------------------------------------------------------------------------------------------
	genvar i;
	generate
		for (i=0;i<WL_XY+5;i=i+1)
		begin:label
			if(i<WL_XY) begin
				assign xY[i] = (x[1] & ~x[0] & xY_in[i]) | (~x[1] & x[0] & ~xY_in[i]);
				assign yX[i] = (y[1] & ~y[0] & yX_in[i]) | (~y[1] & y[0] & ~yX_in[i]);
			end
			else begin
				assign xY[i] = ~x[1] & x[0];
				assign yX[i] = ~y[1] & y[0];
			end
		end
	endgenerate
	
	//------------------------------------------------------------------------------------------------
	//connection to CSA and RCA
	//------------------------------------------------------------------------------------------------
	CSA_top #(WL_XY+5) CSA1(.a(xY),.b(Ws_in_reg),.c(Wc_in_reg),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));	//carry-save adder
	assign W = Ws_sel + Wc_sel;
	
	//------------------------------------------------------------------------------------------------
	//selection function
	//------------------------------------------------------------------------------------------------
	assign temp_z[1] = ~W[2] & (W[1] | W[0]);
	assign temp_z[0] = W[2] & (~W[1] | ~W[0]);
	
	//------------------------------------------------------------------------------------------------
	//calculate the output P
	//------------------------------------------------------------------------------------------------
	assign temp_p = W[1] ^ (temp_z[1] ^ temp_z[0]);
	
	//------------------------------------------------------------------------------------------------
	//generate shifted outputs
	//------------------------------------------------------------------------------------------------
	//assign Wsout_sft = {temp_p,W[0],temp_Wsout[9:0],1'b0};
	//assign Wcout_sft = {2'b0,temp_Wcout[9:0],1'b0};
	assign Wsout_sft = {temp_p,W[0],temp_Wsout[WL_XY+1:0],1'b0};
	assign Wcout_sft = {2'b0,temp_Wcout[WL_XY+1:0],1'b0};
	
	assign z = temp_z;
	assign Ws_out = Wsout_sft;
	assign Wc_out = Wcout_sft;
	

endmodule
