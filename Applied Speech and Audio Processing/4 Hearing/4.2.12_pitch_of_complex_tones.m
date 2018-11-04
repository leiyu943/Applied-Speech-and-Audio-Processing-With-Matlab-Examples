t1=tonegen(196, 8000, 2);
t2=tonegen(196*2, 8000, 2);
t3=tonegen(196*3, 8000, 2);
t4=tonegen(196*4, 8000, 2);

soundsc(t1, 8000);
soundsc(t1+t2+t3+t4, 8000);
soundsc(t2+t3+t4, 8000);

