gs=0.30;     %gap/noise length in seconds
ls=1.50;     %length of sound in seconds
Fs=8000;     %sample rate
fr=110;
to=880;

gap_len=Fs*gs;
au_len=Fs*ls;
gap=zeros(1,gap_len);
noise=rand(1,gap_len);

%Make a steadily rising note
note_f=[fr:(to-fr)/(au_len-1):to];
au=freqgen(note_f,Fs);
au_gap=au;
au_noise=au;

%Now put the gaps 1/2 way up
au_gap(au_len/2+1:au_len/2+gap_len)=gap;
au_noise(au_len/2+1:au_len/2+gap_len)=noise;

%Now repeat several times
au_gap=repmat(au_gap,1,3);
au_noise=repmat(au_noise,1,3);

disp('Now play back and listen to the sounds as shown in the book, page 80');
