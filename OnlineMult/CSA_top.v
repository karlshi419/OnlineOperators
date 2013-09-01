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
module CSA_top(a,b,c,d,cin1,cin2,Ws,Wc);
parameter Stage = 6;
localparam WL = Stage;

	input [WL-1:0] a,d;
	input [WL-1:1] b,c;
	input cin1,cin2;
	output [WL-1:0] Ws,Wc;
	
	wire [WL-1:0] temp_Ws;
	wire [WL:1] temp_Wc;
	//wire [WL-1:1] temp_Wc;
	
	wire [Stage-1:0] h;
	
	////CarrySaveAdder CSA_LSD(.a(a[0]),.b(b[0]),.c(c[0]),.d(d[0]),.hin(cin1),.hout(h[0]),.ws(temp_Ws[0]),.wc(temp_Wc[1]));
	assign {temp_Wc[1],temp_Ws[0]} = a[0] + d[0] + cin1;
	
	assign h[0] = 1'b0;
	
	genvar s;	//stage number
	generate
		for(s=1; s<Stage; s=s+1)
		begin:label_csa
				CarrySaveAdder CSA(.a(a[s]),.b(b[s]),.c(c[s]),.d(d[s]),.hin(h[s-1]),.hout(h[s]),.ws(temp_Ws[s]),.wc(temp_Wc[s+1]));
		end
	endgenerate
	
	assign Ws = temp_Ws;
	assign Wc[0] = cin2;
	assign Wc[WL-1:1] = temp_Wc[WL-1:1];


endmodule
