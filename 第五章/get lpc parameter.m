path=pwd;     
    subdirpath =fullfile( path,'*.wav' );    
    wavs = dir(subdirpath);     
    b = length(wavs);    
    wavs = wavs';%转置    
    a =getfield(wavs,{1},'name')    
    speech = wavread(a)
    
seg=speech(1:160);%加窗为8k采样率的音频的160个点，也就是20ms，本案例是手动加窗。且采用交叠形式。
wseg=seg.*hamming(160);%汉明窗。
a=lpc(wseg,10);  %这里的十阶算上了前向通道的增益1。
freqz(1, a);