%Refer to page 194 in the book

%Determine the pitch with a 1-tap LTP
[B, M] = ltp(sp);

%Scaling ratio
sc=0.35;
M2=round(M*sc);
out=zeros(N*M2+M,1);
win=hamming(1, 2*M);

%Segment the recording into N frames
N=floor(length(sp)/M);

%Window each and reconstruct
for n=1:N-1
    %Indexing is all important
    fr1=1+(n-1)*M;
    to1=n*M+M; 
    seg=sp(fr1:to1).*win;
    fr2=1+(n-1)*M2-M;
    to2=(n-1)*M2+M;
    fr2b=max([1,fr2]);      %Avoid negative indexing
    out(fr2b:to2)=out(fr2b:to2)+seg(1+fr2b-fr2:2*M);
end

