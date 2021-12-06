function res = newton_pv(f, vars, x0)
    G = gradient(f, vars);
    H = hessian(f, vars);
    i = 1;
    res = [];
    
    while i <= 5
        A = vpa(subs(H, vars, x0));
        B = vpa(subs(G, vars, x0));
        s = A \ (-B);
        x0 = x0 + s;
        i = i + 1;
        res = [res x0];
    end
end
    