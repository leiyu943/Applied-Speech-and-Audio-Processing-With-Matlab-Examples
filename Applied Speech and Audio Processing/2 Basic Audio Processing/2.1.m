aro=audiorecorder(16000,16,1); %¼������
record(aro);%¼��
stop(aro);
play(aro);
speech=getaudiodata(aro, 'double');%��ȡ¼�������ݲ�������
sound(speech, 8000);%����
soundsc(speech, 8000);
sound(speech/max(abs(speech)), 8000);%������׼������
plot(speech);%��ͼ
plot( [ 1: size(speech) ] / 8000, speech); %ָ����ͼ������ͼ
a_spec=fft(speech); %fft
plot(abs(a_spec));%��Ƶ���Ի�ͼ
plot(abs(fftshift(a_spec)));%ֱ�������׵�����ת��
 Fs=8000;Ns=256;plot( [1 : 2*Fs/Ns : Fs], abs(a_spec(1:Ns/2)), 'r');