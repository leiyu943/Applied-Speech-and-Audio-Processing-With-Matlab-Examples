if(~exist('s'))
disp('Need to record some speech to array s first');
end

% Create the digital filter
h=[1, -0.9375];
y=filter(h, 1, s);
% Listen to it acting on the speech
soundsc(y);

% Split the speech into frames and filter each one independently
w=240;
n=floor(length(s)/w);
for k=1:n
  seg=s(1+(k-1)*w:k*w);
  segf=filter(h, 1, seg);
  outsp(1+(k-1)*w:k*w)=segf;
end
% Listen to that
soundsc(outsp);

