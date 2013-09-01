`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:15 08/22/2013 
// Design Name: 
// Module Name:    CSA_MSD2 
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
module CSA_MSD2(a,b,c,cin1,cin2,Ws,Wc);
parameter WL = 5;
	input [WL-1:0] a,c;
	input [WL-1:2] b;
	input cin1,cin2;
	output [WL-1:0] Ws,Wc;
	
	wire [WL-1:0] temp_Ws,temp_Wc;
	
	assign temp_Wc[0] = cin2;
	assign {temp_Wc[1],temp_Ws[0]} = a[0] + c[0] + cin1;
	assign {temp_Wc[2],temp_Ws[1]} = a[1] + c[1];
	assign {temp_Wc[3],temp_Ws[2]} = a[2] + c[2] + b[2];
	assign {temp_Wc[4],temp_Ws[3]} = a[3] + c[3] + b[3];
	assign temp_Ws[4] = a[4] + c[4] + b[4];
	
	assign Ws = temp_Ws;
	assign Wc = temp_Wc;



endmodule
