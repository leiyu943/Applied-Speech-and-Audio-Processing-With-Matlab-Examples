
function a=lsp_lpc(theta)
p=length(theta);
q=cos(theta(1:p));
f1(10)=1; f1(9)=0;
for i=1:p/2
f1(10+i)=-2*q(2*i-1)*f1(10+i-1) + 2*f1(10+i-2);
for k=i-1:-1:1
f1(10+k)=f1(10+k) - 2*q(2*i-1)*f1(10+k-1) + f1(10+k-2);
end
end
f2(10)=1; f2(9)=0;
for i=1:p/2
f2(10+i)=-2*q(2*i)*f2(10+i-1) + 2*f2(10+i-2);
for k=i-1:-1:1
f2(10+k)=f2(10+k) - 2*q(2*i)*f2(10+k-1) + f2(10+k-2);
end
end
f1b(1)=f1(11)+1;
f2b(1)=f2(11)-1;
for i=2:p/2
f1b(i) = f1(10+i) + f1(10+i-1);
f2b(i) = f2(10+i) - f2(10+i-1);
end
for i=1:p/2
a2(i) = 0.5*(f1b(i) + f2b(i));
a2(i+p/2) = 0.5*(f1b((p/2)-i+1) - f2b((p/2)-i+1));
end
a=[1,a2]; 