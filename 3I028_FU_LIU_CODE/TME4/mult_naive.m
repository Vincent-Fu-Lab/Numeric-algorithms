function res = mult_naive(P, Q)
    n = length(P);
    res = zeros(1, 2 * n - 1);
    
    for i = 1:n
        for j = 1:n
            res(i + j - 1) = res(i + j - 1) + P(i) * Q(i);
        end
    end
end