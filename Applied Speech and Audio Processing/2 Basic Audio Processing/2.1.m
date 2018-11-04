aro=audiorecorder(16000,16,1); %录音函数
record(aro);%录音
stop(aro);
play(aro);
speech=getaudiodata(aro, 'double');%读取录音的数据并向量化
sound(speech, 8000);%试听
soundsc(speech, 8000);
sound(speech/max(abs(speech)), 8000);%音量标准化试听
plot(speech);%绘图
plot( [ 1: size(speech) ] / 8000, speech); %指定绘图参数绘图
a_spec=fft(speech); %fft
plot(abs(a_spec));%幅频特性绘图
plot(abs(fftshift(a_spec)));%直流分量谱的中心转移
 Fs=8000;Ns=256;plot( [1 : 2*Fs/Ns : Fs], abs(a_spec(1:Ns/2)), 'r');