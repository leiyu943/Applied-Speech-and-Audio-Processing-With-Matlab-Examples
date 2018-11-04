% You will need to record the individual sounds first
% See page 141 in the book

Nc=length(speech_letter_c);
Nr=length(speech_letter_r);
fft_c=fft(speech_letter_c);
fft_c=abs(fft_c(1:Nc/2));
fft_r=fft(speech_letter_r);
fft_r=abs(fft_r(1:Nr/2));

c_lowf=sum(fft_c(1:Nc/4))/(Nc/4);
c_highf=sum(fft_c(1+Nc/4:Nc/2))/(Nc/4);
r_lowf=sum(fft_r(1:Nr/4))/(Nr/4);
r_highf=sum(fft_r(1+Nr/4:Nr/2))/(Nr/4);

c_ratio=c_highf/c_lowf;
r_ratio=r_highf/r_lowf;
