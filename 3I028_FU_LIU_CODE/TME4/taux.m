function res = taux(ffX, seuil)
    m = size(ffX, 1);
    n = size(ffX, 2);
    cpt = 0;
    
    for i = 1:m
        for j = 1:n
            if abs(ffX(i, j)) < seuil | abs(ffX(i, j)) == 0
                cpt = cpt + 1;
            end
        end
    end
    
    res = ((m * n) - cpt) / (m * n);
end