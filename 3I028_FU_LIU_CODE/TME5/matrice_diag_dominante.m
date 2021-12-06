function res = matrice_diag_dominante(n)
    res = zeros(n);
    
    for i = 1:n
        for j = 1:n
            if i == j
                res(i, j) = n + 1;
            else
                res(i, j) = n / 2;
            end
        end
    end
end
            