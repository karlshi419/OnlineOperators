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
parameter Stage_all = 11;		//overall stage number
parameter N = Stage_all - 3;

parameter WL = 2*N;		   	//LSB 3 stages don't need inputs
parameter WL_out = 2*Stage_all;	//word-length of output

	input [WL-1:0] x;
	input [WL-1:2] y;
	output [WL_out-1:0] z;
	input clk;
	input nReset;
	
	input [(N+1)*(N-3)+8:0] xY;		//each input contains #N fractional bits and 1 integer bit, 1st stage only contains 2 bits
	input [(N+1)*(N-3)+6:0] yX;	// not contain the last stage, as it will never be used
	
	reg [WL-1:0] x_reg;
	reg [WL-1:2] y_reg;	//don't need y[1:0]
	reg [WL-1:0] z_reg;
	
	wire [WL-1:0] temp_z;		//not include MSD 3 stages
	
	wire [2:0] Ws_s1;			//don't need MSB, MSB-1 and LSB
	wire [5:0] Ws_s2,Wc_s2;
	wire [6:0] Ws_s3,Wc_s3;
	wire [N+4:1] Ws_s4in,Wc_s4in;
	
	wire [(N+4)*(N-1):1] Ws,Wc;
	
	// 1st stage-------------------------------------------------------------------------------------------------	
	//assign Ws_s1[0] = 1'b0;
	assign Ws_s1[0] = (x_reg[1] ^ x_reg[0]) & xY[0];
	assign Ws_s1[1] = (x_reg[0] & (xY[1] ^ xY[0])) | (x_reg[1] & xY[1]);				//derived from K-map analysis
	assign Ws_s1[2] = (~xY[1] & xY[0] & x_reg[0]) | (xY[1] & x_reg[1]);	//derived from K-map analysis
	
	//--------------------------------------------------------------------------------------------------------------
	
	// 2nd stage 
	OM_MSD2 OM_stage2(.x(x_reg[3:2]),.y(y_reg[3:2]),.Ws_in(Ws_s1),.xY_in(xY[4:2]),.yX_in(yX[2:0]),.Ws_out(Ws_s2),.Wc_out(Wc_s2));
	
	// 3rd stage
	OM_MSD3 OM_stage3(.x(x_reg[5:4]),.y(y_reg[5:4]),.Ws_in(Ws_s2),.Wc_in(Wc_s2),.xY_in(xY[8:5]),.yX_in(yX[6:3]),.Ws_out(Ws_s3),.Wc_out(Wc_s3));
	//--------------------------------------------------------------------------------------------------------------
	
	assign Ws_s4in[N+4:N-2]=Ws_s3;
	assign Wc_s4in[N+4:N-2]=Wc_s3;
	genvar s4;
	generate
		for (s4=1;s4<N-2;s4=s4+1)
		begin:wordlength
			assign Ws_s4in[s4]=1'b0;
			assign Wc_s4in[s4]=1'b0;			
		end
	endgenerate
	
	//4th stage
/*	OM_Main #(N) OM_stage4(.x(x_reg[7:6]),.y(y_reg[7:6]),.Ws_in(Ws_s4in),.Wc_in(Wc_s4in),
								  .xY_in(xY[N+9:9]),.yX_in(yX[N+7:7]),
								  .z(temp_z[1:0]),
								  .Ws_out(Ws[N+4:0]),.Wc_out(Wc[N+4:0]));*/
								  
	OM_MSD4 #(N) OM_stage4(.x(x_reg[7:6]),.y(y_reg[7:6]),.Ws_in(Ws_s4in),.Wc_in(Wc_s4in),
									.xY_in(xY[N+9:9]),.yX_in(yX[N+7:7]),
									.z(temp_z[1:0]),
									.Ws_out(Ws[N+4:1]),.Wc_out(Wc[N+4:1]));

	
	genvar som;	//stage number of OM
	generate
		for (som=1;som<N-3;som=som+1)
		begin:label_OM
				OM_Main #(N) OM(	  .x(x_reg[2*som+7:2*som+6]),.y(y_reg[2*som+7:2*som+6]),
										  .Ws_in(Ws[(N+4)*(som-1)+(N+4):(N+4)*(som-1)+1]),
										  .Wc_in(Wc[(N+4)*(som-1)+(N+4):(N+4)*(som-1)+1]),
										  .xY_in(xY[(N+1)*som+9+N:(N+1)*som+9]),
										  .yX_in(yX[(N+1)*som+7+N:(N+1)*som+7]),
										  .z(temp_z[2*som+1:2*som]),
										  .Ws_out(Ws[(N+4)*som+(N+4):(N+4)*som+1]),
										  .Wc_out(Wc[(N+4)*som+(N+4):(N+4)*som+1]));					
		end
	endgenerate
	
	genvar sl;	//stage number of least significant stages
	generate
		for(sl=N-3;sl<N;sl=sl+1)
		begin:label_sl
			if(sl==N-1)	//final stage, no output
				OM_LSB #(N) OM_L(.Ws_in(Ws[(N+4)*(sl-1)+(N+4):(N+4)*(sl-1)+1]),
									  .Wc_in(Wc[(N+4)*(sl-1)+(N+4):(N+4)*(sl-1)+1]),
									  .z(temp_z[2*sl+1:2*sl]),
									  .Ws_out(),.Wc_out());
			else
				OM_LSB #(N) OM_L(.Ws_in(Ws[(N+4)*(sl-1)+(N+4):(N+4)*(sl-1)+1]),
									  .Wc_in(Wc[(N+4)*(sl-1)+(N+4):(N+4)*(sl-1)+1]),
									  .z(temp_z[2*sl+1:2*sl]),
									  .Ws_out(Ws[(N+4)*sl+(N+4):(N+4)*sl+1]),
									  .Wc_out(Wc[(N+4)*sl+(N+4):(N+4)*sl+1]));
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
	
	assign z = {z_reg,6'b0};


endmodule
