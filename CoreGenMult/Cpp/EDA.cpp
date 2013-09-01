/* Automatic Design Flow */

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <string>

#define MaxSampleNo 100		//maximum number of sampling period
#define InputWL 8			//the Input signal word-length

using namespace std;

int main() {
	string line;
	string::size_type loc1;

	int Sim_Flag;	//Simulation flag to indicate generate Error free or post P&R results
	int Quantizer;	//maximum truncated bits of the LSB stage
	int LoopNo;
	int BW_real;	//actual bitwidth of certain loop of simulation

	int Stage = 0;
	int MSB = 1;
	int LSB = 0;

	system("vlib lib");
	system("vmap work lib");

	//Readin Sample Period Value
	float Ts[MaxSampleNo];
	ifstream File;
	string SplPrd = "./Inputs/Ts.txt";
	File.open(SplPrd.c_str(),ifstream::in);
	int ReadIdx = 0;
	while(!File.eof())
	{
		File>>Ts[ReadIdx];
		ReadIdx ++;
	}
	File.close();	
	//cout<<"123"<<endl;

	//Readin RstClk Value
	float RstClk_Value[MaxSampleNo];
//	ifstream File;
	string RstClk = "./Inputs/RstClk.txt";
	File.open(RstClk.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>RstClk_Value[ReadIdx];	//Read in file
		ReadIdx++;
	}
	File.close();

	//Readin LoopClk1
	float LoopClk1_Value[MaxSampleNo];
	string LoopClk1 = "./Inputs/LoopClk.txt";
	File.open(LoopClk1.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>LoopClk1_Value[ReadIdx];
		ReadIdx++;
	}
	File.close();

	//Readin LoopClk2
	float LoopClk2_Value[MaxSampleNo];
	string LoopClk2 = "./Inputs/LoopClk2.txt";
	File.open(LoopClk2.c_str(),ifstream::in);
	ReadIdx=0;
	while(!File.eof())
	{
		File>>LoopClk2_Value[ReadIdx];
		ReadIdx++;
	}
	File.close();
	cout<<"File Read in: Complete!"<<endl;
	cout<<"******************************************"<<endl;
	cout<<"Please specify the simulation type (0 for Error-free, 1 for P&R):"<<endl;
	cin>>Sim_Flag;

	//cout<<"Please specify total stage number(3 + real stage number):"<<endl;
	cout<<"Please speficy total word-length:"<<endl;
	cin>>BW_real;
	//BW_real = Stage-3;				
	
	if(Sim_Flag==0){					//error-free simulation
		LoopNo=1;
	}
	else{								//post P&R simulation
		cout<<"Please specify how many different sample periods (Max."<<ReadIdx-1<<" for uniform data): "<<endl;
		cin>>LoopNo;
	}
			
	for (int j=MSB; j<MSB+1; j++){	
//		if(j+LSB<2)
//			//BW_real = 2;				//minimum bitwidth, in case LSB=0
//			continue;
//		else
//			BW_real = j + LSB;				//the actual bitwidth into design
		for (int i=0; i<LoopNo; i++){
			ifstream old_testbench;
			ofstream new_testbench;

			ifstream old_fir;
			ofstream new_fir;

			string testbench;
		
			if(Sim_Flag==0){				//Error-free simulation
				testbench="testbench_EF.v";
				new_testbench.open("Testbench2_EF.v",ios::out);
			}
			else{						//post P&R simulation
				testbench="testbench.v";
				new_testbench.open("Testbench2.v",ios::out);
			}
			old_testbench.open(testbench.c_str(),ifstream::in);	//Open original netlist
		
		/* Generate new file */
			//new_testbench.open("Testbench2.v",ios::out);
			string getNextLine;	
			string::size_type loc;

			do{
				getline(old_testbench,getNextLine);	
				//read in one line from oldlist and save to getNextLine 
				
				if(getNextLine.find("Change WL",0)!=string::npos){	//If found the key word
					new_testbench<<"parameter WL = "<<BW_real<<";"<<endl;
				}
				if(getNextLine.find("Change Stage",0)!=string::npos){	//If found the key word
					new_testbench<<"parameter Stage = "<<Stage<<";"<<endl;
				}
				if(getNextLine.find("Change Clock",0)!=string::npos){	//If found the key word
					new_testbench<<"parameter Clock = "<<Ts[i]<<";"<<endl;
				}
//				Change input based on the given word-length
				if(getNextLine.find("Change Input A",0)!=string::npos){	//If found the key word
					new_testbench<<"$readmemb(\"./Inputs/AB/A_"<<BW_real<<".txt\",A_mem);"<<endl;
					//new_testbench<<"$readmemb(\"./Inputs/AB/A_TC_"<<BW_real<<".txt\",xY_mem);"<<endl;
				}
				if(getNextLine.find("Change Input B",0)!=string::npos){	//If found the key word
					new_testbench<<"$readmemb(\"./Inputs/AB/B_"<<BW_real<<".txt\",B_mem);"<<endl;
					//new_testbench<<"$readmemb(\"./Inputs/AB/B_TC_"<<BW_real<<".txt\",yX_mem);"<<endl;
				}

				//Change Output file name
				if(getNextLine.find("Change Output",0)!=string::npos){			  
					new_testbench<<"fp=$fopen(\"./Data/AutoTest/SumPR_WL"<<BW_real<<"_T"<<100*Ts[i]<<".txt\");"<<endl;	
				}
				if(getNextLine.find("Change Result Shift",0)!=string::npos){			  
					new_testbench<<"$fwrite(fp,\"%d\\n\",Sum>>"<<8-LSB<<");"<<endl;
				}
				if(getNextLine.find("Change EF Output",0)!=string::npos){			  
					new_testbench<<"fp=$fopen(\"./Data/ErrorFree/SumEF_MSB"<<j<<"LSB"<<LSB<<"T.txt\");"<<endl;	
				}
				//Change Simulation Parameters
				if(getNextLine.find("Change RstClk",0)!=string::npos){	//Change reset clock
					new_testbench<<"#(Clock*"<<RstClk_Value[i]<<");"<<endl;
				}
				if(getNextLine.find("Change LoopClk1",0)!=string::npos){	//Change Loop Clock 1
					new_testbench<<"#(Clock*"<<LoopClk1_Value[i]<<");"<<endl;
				}
				if(getNextLine.find("Change LoopClk2",0)!=string::npos){	//Change Loop Clock2
					new_testbench<<"#(Clock*"<<LoopClk2_Value[i]<<");"<<endl;
				}
				//Zero padding
				if(getNextLine.find("Ped Zero for A",0)!=string::npos){	
					if(j==InputWL)		//in case no zeros should be padded to the MSB
						new_testbench<<"A = {A_in[loopNo],"<<8-LSB<<"'b0};"<<endl;	//8 is the BW of 2nd stage
					if(LSB==8)			//in case no zeros should be padded to the LSB
						new_testbench<<"A = {"<<InputWL-j<<"'b0,A_in[loopNo]};"<<endl;	
					else				//other cases
						new_testbench<<"A = {"<<InputWL-j<<"'b0,A_in[loopNo],"<<8-LSB<<"'b0};"<<endl;	//8 is the BW of 2nd stage
				}
				if(getNextLine.find("Ped Zero for B",0)!=string::npos){	
					if(j==InputWL)		//in case no zeros should be padded to the MSB
						new_testbench<<"B = {B_in[loopNo],"<<8-LSB<<"'b0};"<<endl;	//8 is the BW of 2nd stage
					if(LSB==8)			//in case no zeros should be padded to the LSB
						new_testbench<<"B = {"<<InputWL-j<<"'b0,B_in[loopNo]};"<<endl;	
					else				//other cases
						new_testbench<<"B = {"<<InputWL-j<<"'b0,B_in[loopNo],"<<8-LSB<<"'b0};"<<endl;	//8 is the BW of 2nd stage
				}
				else
					new_testbench<<getNextLine<<endl;
			}
		
			while(!old_testbench.eof());
			new_testbench.close();

			if(Sim_Flag==0){				//Error-free simulation
				system("vlog CS2Bit.v CSnBit.v CarrySelectAdder.v Testbench2_EF.v");
				system("vsim -c -t 1ps -novopt -do test.tcl -lib work work.testbench");
			}
			else{							//post-P&R simulation				
				//system("vlog ./TimingModels/MSB7LSB7/netgen/par/CarrySelectAdder_timesim.v Testbench2.v");
				system("vlog ./netgen/par/Mult_top_timesim.v Testbench2.v");
				system("vsim -c -t 1ps +notimingchecks -novopt -do test.tcl -L F:/Xilinx/14.1/ISE_DS/ISE/verilog/mti_se/10.1/nt64/secureip -L F:/Xilinx/14.1/ISE_DS/ISE/verilog/mti_se/10.1/nt64/simprims_ver -lib work work.testbench glbl");
			}
		}
	}	//end of for loop
	cout<<"******************************************"<<endl;
	cout<<"Simulation complete, good luck"<<endl;
	cin.get();
	cin.get();
	return 0;
}
			
