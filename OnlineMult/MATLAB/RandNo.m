function [a,b] = RandNo(Permutation, Bits)
% generate radix-2 random number (signed-digit representation)
%Permutation = 10;
%Bits=4;
%a = randint(Permutation,Bits,[-1,1]);
a = [randint(Permutation,Bits-1,[-1,1]),randint(Permutation,1,[0,1])];  %ensure MSB is 0 or 1
[row_a,col_a]=size(a);

filename_a=strcat('A_',num2str(Bits-3),'.txt'); 
fid_a=fopen(filename_a,'wt');
for j=1:row_a
    aa='';
    for i=1:col_a
        if (a(j,col_a)==0 && a(j,col_a-1)~=1)
            a(j,col_a-1)=1;
        end
        if a(j,i)==-1
            aa=[aa,'01'];
        elseif a(j,i)==1
            aa=[aa,'10'];
        else
            aa=[aa,'00'];
        end
    end
    fprintf(fid_a,'%s\n',aa);
end
% generate b
b = [randint(Permutation,Bits-1,[-1,1]),randint(Permutation,1,[0,1])];
[row_b,col_b]=size(b);
filename_b=strcat('B_',num2str(Bits-3),'.txt'); 
fid_b=fopen(filename_b,'wt');
for j=1:row_b
    bb='';
    for i=1:col_b
        if (b(j,col_b)==0 && b(j,col_b-1)~=1)
            b(j,col_b)=1;
        end
        if b(j,i)==-1
            bb=[bb,'01'];
        elseif b(j,i)==1
            bb=[bb,'10'];
        else
            bb=[bb,'00'];
        end
    end
    fprintf(fid_b,'%s\n',bb);
end

end
