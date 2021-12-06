function res = norme1_ligne_oriente_colonne(M)
    res = [];
    i = 1;
    
    while i <= size(M, 1)
        somme = 0;
        j = 1;
        
        while j <= size(M, 2)
            somme = somme + abs(M(i, j));
            j = j + 1;
        end
        
        res = [res somme];
        i = i + 1;
    end
end