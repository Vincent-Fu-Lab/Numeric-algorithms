function x = SOR(A, y, x0, omega, itmax)
    n = length(y);
    x = x0;
    xold = x;
    
    for it = 1:itmax
        for i = 1:n
            x(i) = omega * (y(i) - A(i, 1:(i - 1)) * x(1:(i - 1)) - A(i, (i + 1):n) * x((i + 1):n)) / A(i, i) + (1 - omega) * x(i);
        end
        
        if xold == x
            return
        end
        
        xold = x;
    end
end