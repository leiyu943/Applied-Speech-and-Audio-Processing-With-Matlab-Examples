path=pwd;     
    subdirpath =fullfile( path,'*.wav' );    
    wavs = dir(subdirpath);     
    b = length(wavs);    
    wavs = wavs';%ת��    
    a =getfield(wavs,{1},'name')    
    speech = wavread(a)
    
seg=speech(1:160);%�Ӵ�Ϊ8k�����ʵ���Ƶ��160���㣬Ҳ����20ms�����������ֶ��Ӵ����Ҳ��ý�����ʽ��
wseg=seg.*hamming(160);%��������
a=lpc(wseg,10);  %�����ʮ��������ǰ��ͨ��������1��
freqz(1, a);