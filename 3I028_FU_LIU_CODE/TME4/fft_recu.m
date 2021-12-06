function res = fft_recu(p, racine_n)
    res = [];
    n = length(p);
    
    for j = 0:(n - 1)
        res = [res poly_eval_dp(p, racine_n^j)];
    end
end