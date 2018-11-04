function [shift] = lsp_shift(w1,w2)
    shift=sum(w1) - sum(w2);

