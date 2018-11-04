% Spectral distortion between two signals s and p
S=fft(s.*hamming(N));
S=20*log10(abs(S(1:N/2)));
P=fft(p.*hamming(N));
P=20*log10(abs(P(1:N/2)));

SD= mean((S-P).^2);
