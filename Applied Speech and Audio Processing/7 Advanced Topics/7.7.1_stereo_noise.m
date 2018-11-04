Fs=44100;
Ft=440;
note=tonegen(Ft, Fs, 0.5)


s1=[[zeros(1,20), note];[note, zeros(1,20)]];
s2=fliplr(s1);


soundsc(s1, Fs);
soundsc(s2, Fs);


r1=0.2*rand(1, Fs*0.5);
r2=0.2*rand(1, Fs*0.5);
%Note we use sound rather than soundsc to save our ears

disp('Listen to where the sound is located');
pause(1);
sound([r1;r1], Fs);

disp('Does this next one sound the same?');
pause(1);
sound([r1;r2], Fs);
