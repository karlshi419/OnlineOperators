`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:19 08/21/2013 
// Design Name: 
// Module Name:    OM_MSD4 
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
module OM_MSD4(x,y,Ws_in,Wc_in,xY_in,yX_in,z,Ws_out,Wc_out);
parameter WL_XY = 8;
localparam delay =2;
	input [1:0] x,y;
	input [WL_XY+4:1] Ws_in,Wc_in;
	input [WL_XY:0] xY_in,yX_in;
	
	output [1:0] z;
	output [WL_XY+4:1] Ws_out;
	output [WL_XY+4:1] Wc_out;
	
	wire [WL_XY+1:0] xY,yX;
	wire [WL_XY+1:0] temp_Wsout,temp_Wcout;
	wire [WL_XY+4:1] Wsout_sft;
	wire [WL_XY+4:1] Wcout_sft;
	
	wire [2:0] Ws_sel;
	wire [2:0] Wc_sel;
	wire [2:0] W;
	
	wire [1:0] temp_z;
	wire temp_p;
	
	reg [WL_XY+4:1] Ws_in_reg = 0;
	reg [WL_XY+4:1] Wc_in_reg = 0;
	always @(*)
	begin
		Ws_in_reg <= #delay Ws_in;	//behv simulation
		Wc_in_reg <= #delay Wc_in;	//behv simulation
	end
	
	assign Ws_sel = Ws_in_reg[WL_XY+4:WL_XY+2];	//truncate, only use 3 bits
	assign Wc_sel = Wc_in_reg[WL_XY+4:WL_XY+2];	//truncate, only use 3 bits
	 
	//------------------------------------------------------------------------------------------------
	//Input processing to generate xY
	//------------------------------------------------------------------------------------------------
	genvar i;
	generate
		for (i=0;i<WL_XY+2;i=i+1)
		begin:label
			if(i<WL_XY+1) begin
				assign xY[i] = (x[1] & ~x[0] & xY_in[i]) | (~x[1] & x[0] & ~xY_in[i]);
				assign yX[i] = (y[1] & ~y[0] & yX_in[i]) | (~y[1] & y[0] & ~yX_in[i]);
			end
/*			else if(i==WL_XY) begin
				assign xY[i] = (x[1] & ~x[0] & xY_in[WL_XY]) | (~x[1] & x[0] & ~xY_in[WL_XY]);	//sign extension
				assign yX[i] = (y[1] & ~y[0] & yX_in[WL_XY]) | (~y[1] & y[0] & ~yX_in[WL_XY]);	//sign extension
			end*/
			else begin
				assign xY[i] = xY[WL_XY];	//sign extension
				assign yX[i] = yX[WL_XY];
			end			
		end
	endgenerate
	
	//------------------------------------------------------------------------------------------------
	//connection to CSA and RCA
	//------------------------------------------------------------------------------------------------	
	CSA_top #(WL_XY+2) CSA_Stage4(.a(xY),.b(Ws_in_reg[WL_XY+1:1]),.c(Wc_in_reg[WL_XY+1:1]),.d(yX),.cin1(y[0]),.cin2(x[0]),.Ws(temp_Wsout),.Wc(temp_Wcout));	//carry-save adder
	assign W = Ws_sel + Wc_sel;
	
	//------------------------------------------------------------------------------------------------
	//selection function
	//------------------------------------------------------------------------------------------------
	assign temp_z[1] = ~W[2] & (W[1] | W[0]);
	assign temp_z[0] = W[2] & (~W[1] | ~W[0]);

	//------------------------------------------------------------------------------------------------
	//calculate the output P
	//------------------------------------------------------------------------------------------------
	//assign temp_p = W[1] ^ (temp_z[1] ^ temp_z[0]);
	assign temp_p = ((W[2] | W[0]) & (~W[1])) | (W[2] & W[0]);
	
	//------------------------------------------------------------------------------------------------
	//generate shifted outputs
	//------------------------------------------------------------------------------------------------
	assign Wsout_sft = {temp_p,W[0],temp_Wsout};
	assign Wcout_sft = {2'b0,temp_Wcout};
	
	assign z = temp_z;
	assign Ws_out = Wsout_sft;
	assign Wc_out = Wcout_sft;
	


endmodule
