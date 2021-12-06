function x = jacobi(A, y, xo, itmax)
    n = length(y);
    x = xo;
    xold = x;
    
    for it = 1:itmax
        for i = 1:n
            x(i) = (y(i) - A(i, [1:(i - 1), (i + 1):n]) * xold([1:(i - 1), (i + 1):n])) / A(i, i);
        end
        
        if xold == x
            return
        end
        
        xold = x;
    end
end