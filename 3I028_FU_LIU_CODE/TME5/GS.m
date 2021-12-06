function x = GS(A, y, x0, itmax)
    n = length(y);
    x = x0;
    xold = x;
    
    for it = 1:itmax
        for i = 1 : n
            x(i) = (y(i) - A(i, 1:(i - 1)) * x(1:(i - 1)) - A(i, (i + 1):n) * x((i + 1):n)) / A(i, i);
        end
        
        if xold == x
            return
        end
        
        xold = x;
    end
end