Fs=8000; %采样率
N=100; %频域分辨率
[H, F] = freqz(1,a,N);%h为幅频响应f为相频响应
semilogy(0:Fs/(N-1):Fs,abs(H));%y轴对数坐标曲线
[y,n]=max(abs(H)); %返回共振峰值的坐标
PeakF=(n-1)*Fs/(N-1); %返回共振峰值的频率值