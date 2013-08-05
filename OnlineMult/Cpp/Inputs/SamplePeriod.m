%
Ts=(4.1:-0.02:4)'; % Sample period
SampleTime=17;         % Fixed sample time, when data are stable,depend on pre-simulation
RstClk=floor(SampleTime./Ts);    % # of cycles after reset
LoopClk1=(SampleTime./Ts-RstClk);% # of cycles prior to sample
%LoopClk1=roundn(LoopClk1,-1)   
LoopClk2=3-LoopClk1;             % # of cycles after sample, to ensure a complete cycle

fid=fopen('Ts.txt','wt');
fprintf(fid,'%1.2f\n',Ts);
fclose(fid);

fid=fopen('RstClk.txt','wt');
fprintf(fid,'%1.0f\n',RstClk);
fclose(fid);

fid=fopen('LoopClk.txt','wt');
fprintf(fid,'%1.2f\n',LoopClk1);
fclose(fid);

fid=fopen('LoopClk2.txt','wt');
fprintf(fid,'%1.2f\n',LoopClk2);
fclose(fid);
