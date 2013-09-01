`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:25 08/10/2013 
// Design Name: 
// Module Name:    Mult_top 
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
module Mult_top # (parameter WL_Mult = 13)(A,B,clk,nReset,Sum);
//rameter WL_Mult = 5;
	input [WL_Mult-1:0] A;
	input [WL_Mult-1:0] B;
	input clk;
	input nReset;
	output [WL_Mult*2-1:0] Sum;
	
	reg [WL_Mult-1:0] A_reg;
	reg [WL_Mult-1:0] B_reg;
	reg [WL_Mult*2-1:0] Sum_reg;
	
	wire [WL_Mult*2-1:0] temp_Sum;
	
	Mult_Main #(WL_Mult) MultiplierIP(.A(A_reg),.B(B_reg),.Sum(temp_Sum));
	
	always @ (posedge clk or negedge nReset)
	begin
		if(!nReset)
			{A_reg,B_reg,Sum_reg} <= 'b0;
		else begin
			Sum_reg <= temp_Sum;
			A_reg <= A;
			B_reg <= B;
		end		
	end
	
	assign Sum = Sum_reg;
endmodule
