function res = sin_taylor(x, n)
    res = 0;
    fact = 1;
    signe = 1;
    i = 1;
    
    while i <= n 
        res = res + signe * (x^i) / fact;
        signe = signe * (-1);
        i = i + 2;
        fact = fact * (i - 1) * i;
    end
end
