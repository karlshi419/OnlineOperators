`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:20 01/06/2014 
// Design Name: 
// Module Name:    RA_top 
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
//			designed specifically for parallel mult, cannot be used individually
//////////////////////////////////////////////////////////////////////////////////
module RA_top(Pin,x,y,z);
parameter Stage = 6;				//number of full-adders
localparam WL = Stage * 2;
//parameter delay = 0;				//for behavioural simulations

	input [WL-1:2] Pin;		//Pin
	input [WL-5:0] x;		//all digits of top-input X
	input [1:0] y;
	//input [WL-5:0] y;		//Xy
	output [WL+1:0] z;	
	
	wire [Stage-1:0] h;
	wire [WL+1:0] z;
	wire [WL:1] temp_z;
	
	//reg [WL+1:0] temp_zout;
	
	genvar i;
	generate 
		for(i=0;i<Stage;i=i+1)
		begin:RA
			if(i==0)
				RA_Main SDA(.x(2'b0),.a(x[1:0]),.b(y),.hin(1'b0),.hout(h[0]),.zp(temp_z[1]),.zn(temp_z[2]));	//2 LSBs of x is always 0
			else if(i==Stage-1)
				RA_Main SDA(.x(Pin[2*i+1:2*i]),.a(2'b0),.b(2'b0),.hin(h[i-1]),.hout(h[i]),.zp(temp_z[i*2+1]),.zn(temp_z[i*2+2]));	// first 2 MSBs of y is always 0
			else if(i==Stage-2)
				RA_Main SDA(.x(Pin[2*i+1:2*i]),.a(2'b0),.b(2'b0),.hin(h[i-1]),.hout(h[i]),.zp(temp_z[i*2+1]),.zn(temp_z[i*2+2]));	// next 2 MSBs of y is always 0
			else
				RA_Main SDA(.x(Pin[2*i+1:2*i]),.a(x[2*i+1:2*i]),.b(y),.hin(h[i-1]),.hout(h[i]),.zp(temp_z[i*2+1]),.zn(temp_z[i*2+2]));
		end
	endgenerate
	
	assign z = {h[Stage-1],temp_z,1'b0};


endmodule
