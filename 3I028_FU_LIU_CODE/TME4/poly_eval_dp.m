function res = poly_eval_dp(p, x)
    res = 0;
    n = length(p);
    
    if n == 1
        res = p(1);
        return
    end
    
    if real(x) == 1
        for i = 1:n
            res = res + p(i);
        end
        return
    else
        pp = p(1:2:n); 
        pi = p(2:2:n);
        res = poly_eval_dp(pp, x^2) + x * poly_eval_dp(pi, x^2);
    end
end
        