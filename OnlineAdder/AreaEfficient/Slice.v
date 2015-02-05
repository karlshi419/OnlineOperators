`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:25 03/12/2014 
// Design Name: 
// Module Name:    Slice 
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
module Slice(x1,y1,x2,y2,x3,y3p,z1,z2,s2);
	input [1:0] x1,x2,x3;
	input [1:0] y1,y2;
	input y3p;
	input s2;
	
	output [1:0] z1,z2;
	
	//---- LUT1 ----
	wire L1out;		// output of LUT1
	assign L1out = x3[1] ^ (~x3[0]);
	
	//---- LUT2 ----	
	wire L2outO6,L2outO5;		//output of LUT2
	assign L2outO6 = x2[1] ^ (~x2[0]) ^ y2[1] ^ (~y2[0]);
	assign L2outO5 = x2[1] ^ (~x2[0]) ^ y2[1];
	
	//---- LUT3 ----
	wire L3outO6,L3outO5;		//output of LUT3
	assign L3outO6 = ((x2[1] & (~x2[0])) | ((x2[1] ^ (~x2[0])) & y2[1])) & s2;		//==0
	assign L3outO5 = (x2[1] & (~x2[0])) | ((x2[1] ^ (~x2[0])) & y2[1]) | s2;
	
	
	//---- LUT4 ----
	wire L4outO6,L4outO5;		//output of LUT4
	assign L4outO6 = x1[1] ^ (~x1[0]) ^ y1[1] ^ (~y1[0]);
	assign L4outO5 = x1[1] ^ (~x1[0]) ^ y1[1];
	
	
	//---- allocate input of slice ----
	wire [3:0] DI;
	wire [3:0] S;
	wire CYINIT;
	wire CI;
	
	assign DI = {L4outO5,L3outO5,L2outO5,x3[1]};
	assign S  = {L4outO6,L3outO6,L2outO6,L1out};
	assign CYINIT = y3p;
	assign CI = 1'b0;
	
	
	
	//CARRY4: Fast Carry Logic Component Virtex-6
	wire [3:0] CO,O;
	CARRY4 CARRY4_inst (
		.CO(CO), 			// 4-bit carry out
		.O(O), 				// 4-bit carry chain XOR data out
		.CI(CI), 			// 1-bit carry cascade input
		.CYINIT(CYINIT), 	// 1-bit carry initialization
		.DI(DI), 			// 4-bit carry-MUX data in
		.S(S) 				// 4-bit carry-MUX select input
	);
	
	//---- allocate output of slice ----
	assign {z1,z2} = {CO[3],O[3],CO[1],O[1]};
	//assign {z1,z2} = {~CO[3],O[3],~CO[1],O[1]};


endmodule
