% error analysis: error expectation
clear;
clc;
%sum_EF_dec=DataProcessing('./Data/Sum_EF.txt')';
sum_EF_dec=DataProcessing('./Data/SumPR_T20.txt')';

for T=450:-2:200
    sum_dec(T,:)=DataProcessing(strcat('./Data/SumPR_T',num2str(T),'.txt'))';
    error(T,:)=abs(sum_EF_dec-sum_dec(T,:));
    exp(T,:)=mean(error(T,:));
    MRE(T,:)=exp(T,:)./0.25*100;
end
