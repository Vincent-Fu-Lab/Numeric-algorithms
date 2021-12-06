function res = inverse_mod(a, p)
    u = [1 a];
    v = [0 p];
    
    while v(2) ~= 0
        q = fix(u(2) / v(2));
        t = u - q * v;
        u = v;
        v = t;
    end
    
    res = mod(u(1), p);
end