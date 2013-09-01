%data processing
clear;
clc;
%length=9000;
%Sum_EF=importdata('./ErrorFree/SumMSB2LSB2RCA2_EF.txt');
WL = 13;
Tlow=280;
Tupp=380;

filename_EF=strcat('./ErrorFree/SumPR_WL',num2str(WL),'_EF.txt');
Sum_EF=importdata(filename_EF);
%Sum_EF=importdata('./ErrorFree/SumPR_WL',num2str(WL),'_EF.txt');

%for T=350:-2:180
for T=Tupp:-2:Tlow
    filename_real=strcat('./AutoTest/SumPR_WL',num2str(WL),'_T',num2str(T),'.txt');
    Sum_real(:,T)=importdata(filename_real);
    error(:,T)=Sum_EF(1:10000,1)-Sum_real(:,T);
    Exp(:,T)=mean(abs(error(:,T)));
    %MRE(:,T)=Exp(:,T)./abs(mean(Sum_EF))*100;
end
exp=Exp./(2^(WL*2));
MRE=exp./(0.25)*100;
outname_exp=strcat('Exp_CoreGen_WL',num2str(WL),'_',num2str(Tlow),num2str(Tupp),'.txt');
outname_mre=strcat('MRE_CoreGen_WL',num2str(WL),'_',num2str(Tlow),num2str(Tupp),'.txt');
dlmwrite(outname_exp,exp(1,Tlow:2:Tupp),'\n');
dlmwrite(outname_mre,MRE(1,Tlow:2:Tupp),'\n');

