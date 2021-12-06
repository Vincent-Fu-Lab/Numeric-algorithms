function res = f_voisinzero(x, n)
    res = 0;
    fact = 1;
    i = 1;
    
    while i < n
        fact = fact * i;
        i = i + 1;
    end
    
    i = i - 1;
    
    while i >= 2
        res = (x^(i - 2)) / fact + res;
        fact = fact / i;
        i = i - 1;
    end
end
    