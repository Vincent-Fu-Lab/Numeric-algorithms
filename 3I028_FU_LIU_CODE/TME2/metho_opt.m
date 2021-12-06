function x1 = metho_opt(f, vars, x0, eps_erreur)
    G = gradient(f, vars);
    Gx0 = vpa(subs(G, vars, x0));
    [res_td, res_tg] = wolfe(f, vars, x0, 1, 0, inf, 0.1, 0.9);
    alpha = (res_tg + res_td) / 2;
    x1 = x0 - alpha * Gx0;
    
    while abs(vpa(subs(f, vars, x1)) - vpa(subs(f, vars, x0))) >= eps_erreur
        x0 = x1;
        Gx0 = vpa(subs(G, vars, x0));
        [res_tg, res_td] = wolfe(f, vars, x0, 1, 0, inf, 0.1, 0.9);
        alpha = (res_tg + res_td) / 2;
        x1 = x0 - alpha * Gx0;
    end
end