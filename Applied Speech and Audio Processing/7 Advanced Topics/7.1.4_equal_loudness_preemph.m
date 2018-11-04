% See pages 164 and 165

	 for k=1:128
	  w=4000*2*pi*k/128;
	  Eql(k)=(((56.8*(10^6))+(w^2))*(w^4)) /  ((((6.3*(10^6))+(w^2))^2) *
	 ((0.38*(10^9))+(w^2)));
	 end



	 b4k=f2bark(4000);	%Bark frequency of 4kHz
	 b0=f2bark(0);	%Bark frequency of 0Hz
	 n=128;		%Size of spectrum being analysed
	 for bi=1:40	%Assuming a Bark resolution of 40 bands
	  	bark=b0+bi*(b4k-b0)/40;
	  	wm=round(n*bark2f(bark)/(4000));
	  	if (wm==0)
	  	 wm=1;
	  	end
	  	%establish limits
	  	w_low=bark2f(bark - 1.3)*2*pi;
	  	w_hig=bark2f(bark + 2.5)*2*pi;
	  	wl=fix(w_low/(4000*2*pi/n));
	  	wh=fix(w_hig/(4000*2*pi/n));
	  	%clip to index size
	  	if(wl<1)
	  	 wl=1;
	  	end
	  	if(wh>n)
	  	 wh=n;
	  	end
	  	%perform summation
	  	for wi=wl:wh
	   		w=wi*2*pi*4000/n;
	   		%Find the value of pi (from -1.3 to 2.5)
	   		vlu= 6*log( (w/c) + ((w/c)^2 + 1)^0.5);
	   		vlu=vlu-bark;
	   		%Look at pi \& get multiplier
	   		mul=0;
	   		if(vlu<-1.3)
	   			mul=0;
	   		else
	   			if(vlu<=-0.5)
	   				mul=10^(2.5*(vlu+0.5));
	  			else
	   				if(vlu<0.5)
	   					mul=1;
	   				else
	   					if(vlu<=2.5)
	   					mul=10^(0.5-vlu);
	   					end
	   				end
	   			end
	  		end
	   		X(bi)=X(bi)+Eql(wm)*mul*p(wi);
	  	end
	 end
