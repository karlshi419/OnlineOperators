function [sum_dec] = DataProcessing_PR(filename,Permutation)
%data processing
% results are saved in sum_real
%clear;

% filename=strcat('./Data/Sum_BW4_EF.txt');
% fid=fopen(filename);
fid=fopen(strcat(filename));
sum=textscan(fid,'%s'); %readin as string, return as a cell

%row_sum=length(sum{1,1});   % # of rows of the cell
row_sum=Permutation;
col_sum=length(sum{1,1}{1,1});  %# of columns of the cell

sum_tc=zeros(1,(col_sum-4)/2);  %LSB to MSB
 
%for j=7:7
for j=1:1:row_sum
    %sum_tc=zeros(1,(col_sum-6)/2);
    sum_tc=zeros(1,(col_sum-4)/2);
    for i=col_sum-4:-2:2
        bit_str=sum{1,1}{j,1}(i-1:i);
        bit_num=str2num(bit_str);
        if (bit_num==10)
            bit_sd(j,i/2)=1;
            sum_tc(1,i/2)=1;
        elseif (bit_num==1)
            bit_sd(j,i/2)=-1;
            if isempty(find(sum_tc,1,'first'));
                idx_col=(col_sum-4)/2;  %in case -1 is the first number
            else
                idx_col=find(sum_tc,1,'first');
            end
            sum_tc(1,i/2:idx_col)=xor(sum_tc(1,i/2:idx_col),1);
            %sum_tc(1,i/2:find(sum_tc,1,'first'))=xor(sum_tc(1,i/2:find(sum_tc,1,'first')),1);
        else
            bit_sd(j,i/2)=0;
            sum_tc(1,i/2)=0;
        end
    end
    sum_temp(j,:)=sum_tc(end:-1:1);
end

[row,col]=size(sum_temp);
sum_bin=zeros(row,1);
sum_dec=zeros(row,1);
for j=1:1:row
    for i=1:1:col
        sum_bin(j)=sum_bin(j)+sum_temp(j,i)*10^(1-i);
        sum_dec(j)=sum_dec(j)+sum_temp(j,i)*2^(1-i);    %first bit is integer
        if sum_dec(j)>1
            sum_dec(j)=sum_dec(j)-2;
        end
    end
end

end
        
    


