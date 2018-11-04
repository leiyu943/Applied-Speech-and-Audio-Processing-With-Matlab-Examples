%Given a violin recording, this plots Figure 6.9 (page 152)

c=1;
for i=12:12:48
    subplot(4,1,c);
    a=lpc(violin,i);
    lpcsp(a,lpc_lsp(a));
    xlabel('Frequency');
    ylabel('Amplitude');
    legend(['Order=',num2str(i)]);
    c=c+1;
end
