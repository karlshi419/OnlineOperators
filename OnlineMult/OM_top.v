`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:21 07/19/2013 
// Design Name: 
// Module Name:    OM_top 
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
module OM_top(x,y,z,clk,nReset,xY,yX);
parameter Stage = 11;
parameter WL = 2* Stage;

/*parameter xY = {
					 8'b10001110,
					 8'b10001110,
					 8'b10001100,
					 8'b10001000,
					 8'b10010000,
					 8'b10100000,
					 8'b10000000,
					 1'b1};

parameter yX = {
					 8'b10110110,
					 8'b10111000,
					 8'b10111000,
					 8'b10110000,
					 8'b11000000,
					 8'b11000000,
					 8'b10000000};*/

	input [WL-1:0] x;
	input [WL-1:2] y;
	output [WL-1:0] z;
	input clk;
	input nReset;
	
	//input [8*(Stage-1):0] xY;
	//input [7*Stage-1:0] yX;
	input [Stage*(Stage-1):0] xY;
	input [Stage*(Stage-1)-1:0] yX;
	
	reg [WL-1:0] x_reg;
	reg [WL-1:2] y_reg;	//don't need y[1:0]
	reg [WL-1:4] z_reg;
	
	
	wire [WL-1:4] temp_z;
	
	//wire [12:0] Ws_s1,Wc_s1;
	wire [Stage+4:0] Ws_s1,Wc_s1;

	//wire [13*Stage-14:13] Ws,Wc;
	wire [(Stage+5)*(Stage-1):Stage+5] Ws,Wc;
	
	// 1st stage
	genvar s1;
	generate
		//for (s1=0;s1<12;s1=s1+1)
		for (s1=0;s1<Stage;s1=s1+1)
		begin:label_s1
			//if(s1==7) begin
			if(s1==Stage-1) begin
				assign Ws_s1[s1+1] = (x_reg[1] & ~x_reg[0] & xY[0]) | (~x_reg[1] & x_reg[0] & ~xY[0]);
			end
			else begin
				assign Ws_s1[s1+1] = ~x_reg[1] & x_reg[0];
			end
		end
	endgenerate
	//assign Ws_s1[0] = 1'b0;
	assign Ws_s1[Stage+4:Stage+1] = 4'b0;
	assign Ws_s1[0] = ~x_reg[1] & x_reg[0];
	assign Wc_s1 = 0;

	
	// 2nd stage
	//OM_Main OM2(.x(x_reg[3:2]),.y(y_reg[3:2]),.Ws_in(Ws_s1),.Wc_in(Wc_s1),.xY_in(xY2),.yX_in(yX2),.z(),.Ws_out(Ws_s2),.Wc_out(Wc_s2));
//	OM_Main OM2(.x(x_reg[3:2]),.y(y_reg[3:2]),.Ws_in(Ws_s1),.Wc_in(Wc_s1),.xY_in(xY[8:1]),.yX_in(yX[7:0]),.z(),.Ws_out(Ws[25:13]),.Wc_out(Wc[25:13]));
	
	//3rd stage
//	OM_Main OM3(.x(x_reg[5:4]),.y(y_reg[5:4]),.Ws_in(Ws[25:13]),.Wc_in(Wc[25:13]),.xY_in(xY[16:9]),.yX_in(yX[15:8]),.z(temp_z[5:4]),.Ws_out(Ws[38:26]),.Wc_out(Wc[38:26]));
	//4th stage
//	OM_Main OM4(.x(x_reg[7:6]),.y(y_reg[7:6]),.Ws_in(Ws[38:26]),.Wc_in(Wc[38:26]),.xY_in(xY[24:17]),.yX_in(yX[23:16]),.z(temp_z[7:6]),.Ws_out(),.Wc_out());
	
	genvar som;	//stage number of OM
	generate
		for (som=1;som<Stage;som=som+1)
		begin:label
			if (som==1)	//the second stage
				//OM_Main OM(.x(x_reg[3:2]),.y(y_reg[3:2]),.Ws_in(Ws_s1),.Wc_in(Wc_s1),.xY_in(xY[8:1]),.yX_in(yX[7:0]),.z(),.Ws_out(Ws[25:13]),.Wc_out(Wc[25:13]));
				OM_Main #(Stage) OM(.x(x_reg[3:2]),.y(y_reg[3:2]),.Ws_in(Ws_s1),.Wc_in(Wc_s1),.xY_in(xY[Stage:1]),.yX_in(yX[Stage-1:0]),.z(),.Ws_out(Ws[2*Stage+9:Stage+5]),.Wc_out(Wc[2*Stage+9:Stage+5]));
			else if (som==Stage-1)	//final stage, don't need output
				OM_Main #(Stage) OM(.x(x_reg[2*som+1:2*som]),.y(y_reg[2*som+1:2*som]),.Ws_in(Ws[(Stage+5)*som-1:(Stage+5)*som-(Stage+5)]),.Wc_in(Wc[(Stage+5)*som-1:(Stage+5)*som-(Stage+5)]),.xY_in(xY[Stage*som:Stage*(som-1)+1]),.yX_in(yX[Stage*som-1:Stage*som-Stage]),.z(temp_z[2*som+1:2*som]),.Ws_out(),.Wc_out());				
			else begin
				OM_Main #(Stage) OM(.x(x_reg[2*som+1:2*som]),.y(y_reg[2*som+1:2*som]),.Ws_in(Ws[(Stage+5)*som-1:(Stage+5)*som-(Stage+5)]),.Wc_in(Wc[(Stage+5)*som-1:(Stage+5)*som-(Stage+5)]),.xY_in(xY[Stage*som:Stage*(som-1)+1]),.yX_in(yX[Stage*som-1:Stage*som-Stage]),.z(temp_z[2*som+1:2*som]),.Ws_out(Ws[(Stage+5)*som+(Stage+4):(Stage+5)*som]),.Wc_out(Wc[(Stage+5)*som+Stage+4:(Stage+5)*som]));				
			end			
		end
	endgenerate
	
	always @ (posedge clk or negedge nReset)
	begin
		if(!nReset)
			{x_reg,y_reg,z_reg} <= 'b0;
		else begin
			z_reg	<= temp_z;
			x_reg	<= x;
			y_reg	<= y;
		end
	end
	
	assign z = {z_reg,4'b0};


endmodule
