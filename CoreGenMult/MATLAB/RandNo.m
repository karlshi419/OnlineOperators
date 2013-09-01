clear;
%Generate random integer number
%Number amount='Permutation'
%Varies from 1 to 'Uppbnd'
Bits=13;
UppBnd=2^Bits-1;    %Upper bound of rand numbers
Permutation=12000;   %Define No. of Permutations
% Generate input for A
a=randi(UppBnd,1,Permutation);
[row,col]=size(a);
b=dec2bin(a);
filename_a=strcat('./Inputs/A_',num2str(Bits),'.txt');
fid=fopen(filename_a,'wt');
for i=1:col
    %fprintf(fid,'%d\n',a(:,i));
    fprintf(fid,'%s\n',b(i,:));
end
fclose(fid);
% Generate input for B
a=randi(UppBnd,1,Permutation);
[row,col]=size(a);
b=dec2bin(a);
filename_b=strcat('./Inputs/B_',num2str(Bits),'.txt');
fid=fopen(filename_b,'wt');
for i=1:col
    %fprintf(fid,'%d\n',a(:,i));
    fprintf(fid,'%s\n',b(i,:));
end
fclose(fid);


