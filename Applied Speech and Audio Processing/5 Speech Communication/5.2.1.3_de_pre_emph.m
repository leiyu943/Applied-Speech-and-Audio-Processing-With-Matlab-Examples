if(~exist('s'))
	disp('You need to record some speech in array s first');
end

% Create the emphasis/de-emphasis filter coefficients
h=[1, -0.9375];

% Apply the emphasis filter
es=filter(h, 1, s);

% Apply the de-emphasis filter
ds=filter(1, h, es);

