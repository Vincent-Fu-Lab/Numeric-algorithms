function res = alpha_pratique
    tmp = 1;
    
    while tmp > 0
        res = tmp;
        tmp = tmp / 2;
    end
    
    res = res / eps_pratique;
end
