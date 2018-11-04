function lpcsp(a, lsp)
[HH, FF]=freqz(1, a, 100);
semilogy(abs(HH),'m-');
hold on V=axis;
axis([1 length(FF) V(3) V(4)]);
hold on;
lsc=100/pi;
for lp=1:length(lsp)
line([1+lsp(lp)*lsc,1+lsp(lp)*lsc], [V(3),V(4)]);
end
hold off;