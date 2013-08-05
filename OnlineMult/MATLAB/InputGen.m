%Generate 1.signed-digit number 2.Conversion to 2's complement number
clear;
clc;
Permutation=10000;
Bits=11;    %3 (online delay, fixed) +8 fractional bits
[sd1,sd2]=RandNo(Permutation,Bits);
row_sd1=length(sd1);
filename_out1=strcat('A_TC_',num2str(Bits-3),'.txt');
fid_out1=fopen(filename_out1,'wt');
for idx=1:1:row_sd1
    sd_mtx1=Conversion(sd1(idx,:));
    sd_str1=strrep(int2str(sd_mtx1(1:end-Bits+1)),' ','');  %only MSB for the 1st result and remove all spaces
    fprintf(fid_out1,'%s\n',sd_str1);
end
%
filename_out2=strcat('B_TC_',num2str(Bits-3),'.txt');
fid_out2=fopen(filename_out2,'wt');
row_sd2=length(sd2);
for idx=1:1:row_sd2
    sd_mtx2=Conversion(sd2(idx,:));
    sd_str2=strrep(int2str(sd_mtx2(Bits+1:end)),' ','');
    fprintf(fid_out2,'%s\n',sd_str2);
end