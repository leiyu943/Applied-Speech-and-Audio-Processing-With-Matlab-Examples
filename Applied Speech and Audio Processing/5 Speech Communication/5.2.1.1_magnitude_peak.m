Fs=44100;   %sample rate
N=50;     %frequency resolution
[H, F] = freqz(1,pulse50,N);

%Plot the magnitude with a logarithmic scale on the y-axis
semilogy(0:Fs/(N-1):Fs,abs(H));
[y,n]=max(abs(H));

disp('The peak frequency is at:');
PeakF=(n-1)*Fs/(N-1)
