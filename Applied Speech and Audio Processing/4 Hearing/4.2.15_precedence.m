audio=reshape(audio,1,length(audio));

for echo=0.01:0.020:0.1
 pad=zeros(1,fix(Fs*echo));
 input('Press any key to hear next echo');
 soundsc([audio,pad]+[pad,audio],Fs);
end

