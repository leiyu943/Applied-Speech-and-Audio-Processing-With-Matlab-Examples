% Create the emphasis/de-emphasis filter coefficients
h=[1, -0.9375];
% Apply the emphasis filterԤ��ǿ
s = speech;
es=filter(h, 1, s);

% Apply the de-emphasis filter
ds=filter(1, h, es);
freqz (ds)


%������
subplot(3,1,1),psd(speech)
subplot(3,1,2),psd(es)
subplot(3,1,3),psd(ds)

soundsc(speech)

soundsc(es)