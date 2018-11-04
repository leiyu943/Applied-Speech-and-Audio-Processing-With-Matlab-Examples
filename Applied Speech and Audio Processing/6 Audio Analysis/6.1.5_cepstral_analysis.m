%segment is a short recording of voiced speech

len=length(segment);

%Take the cepstrum
ps=log(abs(fft(segment)));
cep=ifft(ps);

%Perform the filtering
cut=30;
cep2=zeros(1,len);
cep2(1:cut-1)=cep(1:cut-1)*2;
cep2(1)=cep(1);
cep2(cut)=cep(cut);

%Convert to frequency domain
env=real(fft(cep2));
act=real(fft(cep));

%Plot the result
pl1=20*log10(env(1:len/2));
pl2=20*log10(act(1:len/2));
span=[1:fs/len:fs/2];

plot(span,pl1,'k-.',span,pl2,'b');
xlabel('Fequency, Hz');
ylabel('Amplitude, dB');

