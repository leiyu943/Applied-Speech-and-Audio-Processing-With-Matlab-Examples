%LSP waterfall plot like Figure 6.10a on page 153

%Assume data is in an array called "audio"
%Window size
w=256;
%No overlap here
order=18;
c=0;
for index=1:w:length(audio)-w
    c=c+1;
    a=lpc(audio(index:index+w),order);
    lsp(c,1:order)=lpc_lsp(a);
end

plot(lsp*8000/pi);   %assume Fs=8000
