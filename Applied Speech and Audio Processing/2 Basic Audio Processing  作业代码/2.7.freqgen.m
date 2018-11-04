function [snd]=freqgen(frc, Fs)
th=0;
fr=frc*2*pi/Fs;
for si=1:length(fr)
th=th+fr(si);
snd(si)=sin(th);
th=unwrap(th);
end