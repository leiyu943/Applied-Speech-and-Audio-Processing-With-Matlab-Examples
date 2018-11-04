% The MSE of speech frame jth segment, with N samples and no overlap
mse(j)=mean((s(j*N+1:(j+1)*N)-p(j*N+1:(j+1)*N)).^2)
