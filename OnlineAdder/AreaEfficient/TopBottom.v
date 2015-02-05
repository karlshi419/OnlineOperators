`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:42 03/13/2014 
// Design Name: 
// Module Name:    TopBottom 
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
//		combination of remening MSD & LSD logic, when overall word-length is EVEN!
//////////////////////////////////////////////////////////////////////////////////
module TopBottom(x1,x2,y1,y2p,z1,z2p,xL,yL,zL);

	input [1:0] x1,x2,y1;
	input y2p;
	//input s2;				//dummy input, should always be 0
	input [1:0] xL,yL;	//input of LSD
	//input cin;				//carry input of entire adder
	output [1:0] z1;
	output z2p;
	output [1:0] zL;		//output of LSD			
	
	
	//---- MSD Slice -------------------------------------------------------
	
	//---- LUT1 ----
	wire L1out;		// output of LUT1
	assign L1out = x2[1] ^ (~x2[0]);
	
	//---- LUT2 ----	
	wire L2outO6,L2outO5;		//output of LUT2
	assign L2outO6 = x1[1] ^ (~x1[0]) ^ y1[1] ^ (~y1[0]);
	assign L2outO5 = x1[1] ^ (~x1[0]) ^ y1[1];
		
	//---- LUT3 ----
//	wire L3outO6,L3outO5;		//output of LUT3
//	assign L3outO6 = ((x1[1] & (~x1[0])) | ((x1[1] ^ (~x1[0])) & y1[1])) & s2;		//==0
//	assign L3outO5 = (x1[1] & (~x1[0])) | ((x1[1] ^ (~x1[0])) & y1[1]) | s2;

	wire L3out;
	assign L3out = (x1[1] & (~x1[0])) | ((x1[1] ^ (~x1[0])) & y1[1]);
	 
	//---- allocate input of slice ----
	wire [3:0] DI;
	wire [3:0] S;
	wire CYINIT;
	wire CI;
	
	//assign DI = {1'b0,L3outO5,L2outO5,x2[1]};
	//assign S  = {1'b0,L3outO6,L2outO6,L1out};
	assign DI = {1'b0,1'b0,L2outO5,x2[1]};
	assign S  = {1'b0,1'b0,L2outO6,L1out};
	assign CYINIT = y2p;
	assign CI = 1'b0;
	 
	//CARRY4: Fast Carry Logic Component Virtex-6
	wire [3:0] CO,O;
	CARRY4 CARRY4_inst_MSD (
		.CO(CO), 			// 4-bit carry out
		.O(O), 				// 4-bit carry chain XOR data out
		.CI(CI), 			// 1-bit carry cascade input
		.CYINIT(CYINIT), 	// 1-bit carry initialization
		.DI(DI), 			// 4-bit carry-MUX data in
		.S(S) 				// 4-bit carry-MUX select input
	);
	
	//---- allocate output of slice ----
	assign {z1,z2p} = {L3out,CO[1],O[1]};
	//assign {z1,z2p} = {CO[2],CO[1],O[1]};
	//assign {z1,z2p} = {CO[2],~CO[1],O[1]};	//--real results but need 1 extra LUT
	
	
	//---- LSD Slice -------------------------------------------------------
	//---- LUT1 ----	
//	wire L1outLO6,L1outLO5;		//output of LUT1, LSD
//	assign L1outLO6 = xL[1] ^ (~xL[0]) ^ yL[1] ^ (~yL[0]);
//	assign L1outLO5 = xL[1] ^ (~xL[0]) ^ yL[1];
//	
//	//---- allocate input of slice ----
//	wire [3:0] DI_L;
//	wire [3:0] S_L;
//	wire CYINIT_L;
//	
//	assign DI_L = {3'b0,L1outLO5};
//	assign S_L  = {3'b0,L1outLO6};
//	assign CYINIT_L = cin;
//	
//	//CARRY4: Fast Carry Logic Component Virtex-6
//	wire [3:0] CO_L,O_L;
//	CARRY4 CARRY4_inst_LSD (
//		.CO(CO_L), 				// 4-bit carry out
//		.O(O_L), 				// 4-bit carry chain XOR data out
//		.CYINIT(CYINIT_L), 	// 1-bit carry initialization
//		.CI(1'b0),
//		.DI(DI_L), 				// 4-bit carry-MUX data in
//		.S(S_L) 					// 4-bit carry-MUX select input
//	);
//	
//	//---- allocate output ----
//	assign zL = {CO_L[0],O_L[0]};
//	//assign zL = {~CO_L[0],O_L[0]};
	
	assign zL[1] = ~(xL[1]^(~xL[0])^yL[1]) | ((xL[1]^(~xL[0])^yL[1])&yL[0]);
	assign zL[0] = (~(xL[1]^(~xL[0])^yL[1])&~yL[0]) | (xL[1]^(~xL[0])^yL[1]&yL[0]);


endmodule
