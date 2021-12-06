function res = eps_pratique
    res = 1;
    
    while 1 + res > 1
        res = res / 2;
    end
    
    res = res * 2;
end