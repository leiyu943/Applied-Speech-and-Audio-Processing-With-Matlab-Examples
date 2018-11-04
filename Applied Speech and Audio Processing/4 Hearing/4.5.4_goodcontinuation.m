Fs=8000;
n1=832;
n2=350;
d1=0.1*Fs;
dm=0.04*Fs;
d2=0.1*Fs;
a=[n1*ones(1,d1), zeros(1,dm), n2*ones(1,d2), zeros(1,dm)];
b=[n1*ones(1,d1), n1-[1:dm]*(n1-n2)/(dm), n2*ones(1,d2), 
     n2+[1:dm]*(n1-n2)/(dm)];
sa=freqgen(a,Fs);
sb=freqgen(b,Fs);

amp=0.4+sign(a)/2;
sa=sa.*amp;
sb=sb.*amp;

disp('Listen to the discontinuous sound');
pause(1);
soundsc(repmat(sa,1,8))

disp('... and the continuous');
pause(1);
soundsc(repmat(sb,1,8))

