function nlsp=lspnarrow(lsp,sc)
 p=length(lsp);
 wid=diff(lsp);

 %first determine which LSP pairs are narrowest
 n=[pi, pi, pi];
 ni=[0, 0, 0];
 for lp=1:p-1
     if(wid(lp) < n(3))
        if(wid(lp) < n(2))
            if(wid(lp) < n(1))
                n=[wid(lp), n(1:2)];
                ni=[lp, ni(1:2)];
            else
                 n(2:3)=[wid(lp), n(2)];
                 ni(2:3)=[lp, ni(2)];
            end
        else
             n(3)=wid(lp);
             ni(3)=lp;
        end
     end
 end

 %narrow the 3 narrow pairs even further
 nlsp=lsp;
 for k=1:3
   nlsp(ni(k))   = lsp(ni(k))   + n(k)*sc;
   nlsp(ni(k)+1) = lsp(ni(k)+1) - n(k)*sc;
 end

