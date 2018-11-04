ss=0.1;     %short sound length in seconds
ls=0.4;     %long sound length in seconds
Fs=8000;    %sample rate

short_a=tonegen(440,Fs,ss); %concert A4
short_b=tonegen(932,Fs,ss); %B5
long_a=tonegen(440,Fs,ls);
long_b=tonegen(932,Fs,ls);

%Construct alternating sounds in a single matrix
short_mat=[short_a, short_b];
long_mat=[long_a, long_b];

%Repeat this matrix several times
long=repmat(long_mat,1,3);
short=repmat(short_mat,1,12);

