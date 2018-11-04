if(~exist('violin'))
	disp('Ensure an array named violin has been recorded');
end

%Plots a simple single spectrum of a segment of the violin music

P=16;
Ws=256;  %window size=256 samples
vseg=violin(1:Ws).*hamming(Ws);
a=lpc(vseg, P);
w=lpc_lsp(a);
lpcsp(a, w);

