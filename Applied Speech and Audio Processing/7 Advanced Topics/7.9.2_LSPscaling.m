%Refer to page 196 in the book

%Determine the pitch with a 1-tap LTP
[Beta, tapA] = ltp(sp);

%Extract the pitch from the speech
vocA=filter([1,zeros(1,tapA-1),-Beta], 1, sp);

%Perform LPC analysis
aA=lpc(sp.*hamming(length(vocA)), 10);
lung=filter(aA, 1, vocA);
lspA=lpc_lsp(aA);

%-- transform --
%lspB=lspA*1.1;
%tapB=round(tapA/1.1);
lspB=lspA/1.1;
tapB=round(tapA*1.1);

%------------------ 
aB=lsp_lpc(lspB);

%Recreate the speech
vocB=filter(1, aB, lung);
spB=filter([1,zeros(1,tapB-1),Beta], 1, vocB);

