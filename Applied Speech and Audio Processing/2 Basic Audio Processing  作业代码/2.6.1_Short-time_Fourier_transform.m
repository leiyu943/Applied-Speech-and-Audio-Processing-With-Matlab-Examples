aro=audiorecorder(16000,16,1); %¼������
record(aro);%¼��
stop(aro);
speech=getaudiodata(aro, 'double');
soundsc(speech);
s=spectrogram(speech,hamming);
plot(s);
