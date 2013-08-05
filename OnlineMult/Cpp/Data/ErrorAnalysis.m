% error analysis: error expectation
%clear;
clc;
%sum_EF_dec=DataProcessing('./Data/Sum_EF.txt')';
sum_EF_dec=DataProcessing('./ErrorFree/SumPR_WL8_EF.txt')';

for T=400:-2:400
    sum_dec(T,:)=DataProcessing(strcat('./AutoTest/SumPR_WL8_T',num2str(T),'.txt'))';
    error(T,:)=abs(sum_EF_dec-sum_dec(T,:));
    exp(T,:)=mean(error(T,:));
    MRE(T,:)=exp(T,:)./0.25*100;
end
 dlmwrite('MRE.txt',MRE(200:2:406,1),'\n');