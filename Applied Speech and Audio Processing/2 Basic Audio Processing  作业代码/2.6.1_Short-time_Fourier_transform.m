aro=audiorecorder(16000,16,1); %Â¼Òôº¯Êý
record(aro);%Â¼Òô
stop(aro);
speech=getaudiodata(aro, 'double');
soundsc(speech);
s=spectrogram(speech,hamming);
plot(s);
