function [sd_mtx_out]=Conversion(sd)
%
%sd=[1,-1,1,-1];  %signed-digit number, LSB to MSB
[row_sd,col_sd]=size(sd);
tc=zeros(1,col_sd+2);     %twos-complement number after conversion, with 2 integer bits
for psd=col_sd:-1:1
    if sd(1,psd)==1
        tc(1,col_sd-psd+3)=1;
    elseif sd(1,psd) ==-1
        if isempty(find(tc,1,'first'))
            idx_col=1;  %in case -1 is the first number
        else
            idx_col=find(tc,1,'last');
        end
        tc(1,idx_col:col_sd-psd+3)=xor(tc(1,idx_col:col_sd-psd+3),1);
        %tc(1,find(tc,1,'first'):col_sd-psd+3)=xor(tc(1,find(tc,1,'first'):col_sd-psd+3),1);
    end
    sd_mtx(psd,:)=tc;   %final row is 1st result
end
sd_mtx_out=sd_mtx(:,3:col_sd+2)'; 
%sd_str_out=int2str(sd_mtx_out(1:end-3));    %only MSB for the 1st result
%%sd_out=int2str(sd_mtx(:,3:col_sd+2));   %get rid of integer bits
end