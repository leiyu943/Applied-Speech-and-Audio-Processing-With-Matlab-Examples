function lsp=lpc_lsp(a)
p=length(a); A(1)=1; B(1)=1;
for k=2:p
A(k)=(a(k) - a(p+2-k)) + A(k-1);
B(k)=(a(k) + a(p+2-k)) - B(k-1);
end
r1=roots(A);
r2=roots(B);
for k=1:p-1
if (real(r1(k)) < 0)
theta1(k)=pi-abs(atan(imag(r1(k))/real(r1(k))));else
theta1(k)=abs(atan(imag(r1(k))/real(r1(k))));
end
if (real(r2(k)) < 0)
theta2(k)=pi-abs(atan(imag(r2(k))/real(r2(k))));
else
theta2(k)=abs(atan(imag(r2(k))/real(r2(k))));
end
end%求相位
p=p-1;
for k=1:p/2
theta(k)=theta1(k*2);
theta(k+(p/2))=theta2(k*2);
end  %给所有θk赋值
lsp=sort(theta); %所有线谱频率排序 