function res = sin_serie(x)
    x = mod(x, 2 * pi);
    s = 0;
    if  pi / 2 <= x & x <= pi 
        x = pi - x;
    else
        s = 1;
        if pi <= x & x <= (3 / 2) * pi
            x = x - pi;
        else
            x = 2 * pi - x;
        end
    end
    res = x;
    fact = 2 * 3;
    signe = -1;
    i = 3;
    tmp = res + signe * (x^i) / fact;
    
    while res ~= tmp
        res = tmp;
        i = i + 2;
        fact = fact * (i - 1) * i;
        signe = signe * (-1);
        tmp = res + signe * (x^i) / fact;
    end
    
    if s
        res = - res;
    end
end