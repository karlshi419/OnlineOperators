`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:16:53 08/14/2013 
// Design Name: 
// Module Name:    OM_LSB 
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
module OM_LSB(Ws_in,Wc_in,z,Ws_out,Wc_out);
parameter WL_cs = 8;	//word-length of sum and carry
localparam delay = 2;
	input [WL_cs+4:1] Ws_in;
	input [WL_cs+4:1] Wc_in;
	output [1:0] z;
	output [WL_cs+4:1] Ws_out;
	output [WL_cs+4:1] Wc_out;
	
	wire [WL_cs+4:1] Wsout_sft,Wcout_sft;		//the shifted output
	
	wire [2:0] Ws_sel,Wc_sel;		//truncate bits to select z
	wire [2:0] W;
	wire [1:0] temp_z;				//selected output z
	wire temp_p;
	
	reg [WL_cs+4:1] Ws_in_reg = 0;
	reg [WL_cs+4:1] Wc_in_reg = 0;
	always @(*)
	begin
		Ws_in_reg <= #delay Ws_in;
		Wc_in_reg <= #delay Wc_in;		
		//Ws_in_reg <= Ws_in;
		//Wc_in_reg <= Wc_in;
	end
	
	assign Ws_sel = Ws_in_reg[WL_cs+4:WL_cs+2];	//truncate, only use 3 bits
	assign Wc_sel = Wc_in_reg[WL_cs+4:WL_cs+2];	//truncate, only use 3 bits
		
	//------------------------------------------------------------------------------------------------
	//connection to CSA and RCA
	//------------------------------------------------------------------------------------------------
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
	assign Wsout_sft = {temp_p,W[0],Ws_in_reg[WL_cs+1:1],1'b0};
	assign Wcout_sft = {2'b0,Wc_in_reg[WL_cs+1:1],1'b0};
	
	assign z = temp_z;
	assign Ws_out = Wsout_sft;
	assign Wc_out = Wcout_sft;	


endmodule
