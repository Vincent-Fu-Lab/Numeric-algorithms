function res = produit_matriciel(A, B)
    n = size(A, 1);
    res = zeros(n);
    i = 1;
    
    while i <= n 
        j = 1;
        
        while j <= n
            k = 1;
            somme = 0;
            
            while k <= n
                somme = somme + A(i, k) * B(k, j);
                k = k + 1;
            end
            
            res(i, j) = somme;
            j = j + 1;
        end
        
        i = i + 1;
    end