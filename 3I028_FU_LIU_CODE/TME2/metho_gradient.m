function x1 = metho_gradient(f, vars, x0, alpha, eps_erreur)
    G = gradient(f, vars);
    Gx0 = vpa(subs(G, vars, x0));
    x1 = x0 - alpha * Gx0;
    
    while abs(vpa(subs(f, vars, x1)) - vpa(subs(f, vars, x0))) >= eps_erreur 
        x0 = x1;
        Gx0 = vpa(subs(G, vars, x0));
        x1 = x0 - alpha * Gx0;
    end
end