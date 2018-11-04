%Define the parameters
dur=1.2;
Fs=8000;
%Raw tones
a=220;
b=a*2^(3/12);
c=a*2^(7/12);
%Make the tones
sa=tonegen(a, Fs, dur);
sb=tonegen(b, Fs, dur);
sc=tonegen(c, Fs, dur);
%And their harmonics
sa2=tonegen(a*2, Fs, dur);
sb2=tonegen(b*2, Fs, dur);
sc2=tonegen(c*2, Fs, dur);

%Mixes
sound1=sa+sb+sc;
sound2=sound1+sa2+sb2+sc2;

%Now modulate them
mod1=tonegen(7, Fs, dur);
mod2=tonegen(27, Fs, dur);
mod3=tonegen(51, Fs, dur);
am=mod1.*(sa+sa2);
bm=mod2.*(sb+sb2);
cm=mod3.*(sc+sc2);

%Add some gaps
gap=zeros(1,Fs*0.05);
sound3=[am,gap,gap]+[gap,bm,gap]+[gap,gap,cm];

%Listen to it
soundsc([sound1,sound2,sound3], Fs)

pause(1);
disp('Edit this code to try out the three other modulations shown on page 83');
