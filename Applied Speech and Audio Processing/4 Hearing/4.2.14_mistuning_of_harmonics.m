note=440;
t1=tonegen(note, 8000, 1);
t2=tonegen(note*2^(3/12), 8000, 1);
t3=tonegen(note*2^(8/12), 8000, 1);
disp('Hear the harminic A4 chord');
pause(1);	
soundsc(t1+t2+t3, 8000);

pause(1);	
disp('Now hear the same thing with one of the tones mistuned slightly');
pause(1);
m2=tonegen(note*1.05*2^(3/12), 8000, 1);
soundsc(t1+m2+t3, 8000);

