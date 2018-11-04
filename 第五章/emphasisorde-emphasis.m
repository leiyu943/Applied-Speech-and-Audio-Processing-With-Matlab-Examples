% Create the emphasis/de-emphasis filter coefficients
h=[1, -0.9375];
% Apply the emphasis filter预增强
s = speech;
es=filter(h, 1, s);

% Apply the de-emphasis filter
ds=filter(1, h, es);
freqz (ds)


%功率谱
subplot(3,1,1),psd(speech)
subplot(3,1,2),psd(es)
subplot(3,1,3),psd(ds)

soundsc(speech)

soundsc(es)