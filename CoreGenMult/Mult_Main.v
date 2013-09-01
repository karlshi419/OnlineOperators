`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:30 08/10/2013 
// Design Name: 
// Module Name:    Mult_Main 
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
module Mult_Main #(parameter WL = 9)(A,B,Sum);
//parameter WL = 9;
	input [WL-1:0] A;
	input [WL-1:0] B;
	output [2*WL-1:0] Sum;
	 
	Mult_IP Mult(.a(A),.b(B),.p(Sum));


endmodule
