`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:54:11 07/18/2013 
// Design Name: 
// Module Name:    CarrySaveAdder 
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
module CarrySaveAdder(a,b,c,d,hin,hout,wc,ws);
	input a,b,c,d,hin;
	output hout,wc,ws;
	
	////wire a1,b1,cin1,
	wire cout1,s1;
	wire a2,b2,cin2,cout2,s2;
//	
////	assign a1=a;
////	assign b1=b;
////	assign cin1=c;
	
	assign {cout1,s1} = a + b + c;
	assign hout = cout1;
	//assign {hout,a2} = a + b + c;
	
	assign a2 = s1;
	assign b2 = d;
	assign cin2 = hin;
	
	//assign {wc,ws} = a2 + b2 + cin2;
	assign {cout2,s2} = a2 + b2 + cin2;
	assign wc = cout2;
	assign ws = s2;

endmodule
