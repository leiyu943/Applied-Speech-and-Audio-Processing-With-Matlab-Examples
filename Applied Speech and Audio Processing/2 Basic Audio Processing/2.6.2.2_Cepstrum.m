ps=log(abs(fft(hamming(length(segment)).*segment)));
plot(abs(ifft( ps )));

