%data processing
clear;
clc;
%length=9000;
%Sum_EF=importdata('./ErrorFree/SumMSB2LSB2RCA2_EF.txt');

Sum_EF=importdata('./Data/SumPR_EF.txt');

for T=600:-2:600
    filename_real=strcat('./Data/SumPR_T',num2str(T),'.txt');
    Sum_real(:,T)=importdata(filename_real);
    error(:,T)=abs(Sum_EF./65536-Sum_real(:,T)./65536);
    Exp(:,T)=mean(error(:,T));
    MRE(:,T)=Exp(:,T)./0.25*100;
end    
%filename_real=strcat('./SimT_.txt');
%Sum_real=importdata(filename_real);

%error=Sum_real(1:length)-Sum_EF(1:length);

%Exp=mean(abs(error));