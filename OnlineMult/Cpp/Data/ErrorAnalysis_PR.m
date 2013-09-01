% error analysis: error expectation
%clear;
clc;
WL = 12;
filename_EF=strcat('./EF/Sum_WL',num2str(WL),'_EF_PR.txt');
sum_EF_dec=DataProcessing_PR(filename_EF,10000)';

for T=350:-2:200
    fn=strcat('./AutoTest/PR/SumPR_WL',num2str(WL),'_T',num2str(T),'.txt');  
    %fn=strcat('./AutoTest/PR/SumPR_WL8_T',num2str(T),'.txt');
    %sum_dec(T,:)=DataProcessing_PR(strcat('./AutoTest/PR/Sum_WL8_T',num2str(T),'.txt'),100000)';
    sum_dec(T,:)=DataProcessing_PR(fn,10000)';

    error(T,:)=abs(sum_EF_dec)-abs(sum_dec(T,:));

    exp(T,:)=mean(abs(error(T,:)));

   
end
%  dlmwrite('MRE.txt',MRE(200:2:406,1),'\n');