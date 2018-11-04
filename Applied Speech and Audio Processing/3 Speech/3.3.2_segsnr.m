% SEGSNR of jth segment in frame, over N samples without overlap
segsnr(j)=10*log10(s(j*N+1:(j+1)*N)./n(j*N+1:(j+1)*N))
