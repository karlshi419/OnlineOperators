`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:20 07/18/2013 
// Design Name: 
// Module Name:    CSA_top 
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
module CSA_top(a,b,c,d,cin1,cin2,Ws,Wc,clk,nReset);
parameter Stage = 3;
parameter WL = Stage;

	input [WL-1:0] a,b,c,d;
	input cin1,cin2;
	output [WL-1:0] Ws,Wc;
	input clk;
	input nReset;
	
	reg [WL-1:0] a_reg,b_reg,c_reg,d_reg;
	reg [WL-1:0] Ws_reg;
	reg [WL-1:1] Wc_reg;
	
	wire [WL-1:0] temp_Ws;
	wire [WL:1] temp_Wc;
	
	wire [Stage-1:0] h;
	
	genvar s;	//stage number
	generate
		for(s=0; s<Stage; s=s+1)
		begin:label
			if (s==0)
				CarrySaveAdder CSA(.a(a_reg[0]),.b(b_reg[0]),.c(c_reg[0]),.d(d_reg[0]),.hin(cin1),.hout(h[0]),.ws(temp_Ws[0]),.wc(temp_Wc[1]));
			else
				CarrySaveAdder CSA(.a(a_reg[s]),.b(b[s]),.c(c_reg[s]),.d(d_reg[s]),.hin(h[s-1]),.hout(h[s]),.ws(temp_Ws[s]),.wc(temp_Wc[s+1]));
		end
	endgenerate
	
	always @ (posedge clk or negedge nReset)
	begin
		if(!nReset)
			{a_reg,b_reg,c_reg,d_reg,Ws_reg,Wc_reg}	<= 'b0;
		else begin
			Ws_reg	<= temp_Ws;
			Wc_reg	<= temp_Wc[WL-1:1];
			a_reg		<= a;
			b_reg		<= b;
			c_reg		<= c;
			d_reg		<= d;
		end
	end
	
	assign Ws = Ws_reg;
	assign Wc[0] = cin2;
	assign Wc[WL-1:1] = Wc_reg;
	



endmodule
