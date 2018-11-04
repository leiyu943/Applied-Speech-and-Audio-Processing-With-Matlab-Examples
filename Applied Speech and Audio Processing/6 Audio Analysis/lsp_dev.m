function [dev] = lsp_dev(w,bar_w,b)
    dev=sum( (w-bar_w).^b);

