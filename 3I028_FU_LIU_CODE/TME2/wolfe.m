function [res_tg, res_td] = wolfe(f, vars, x0, t, tg, td, m1, m2)
    res_tg = tg;
    res_td = td;
    G = gradient(f, vars);
    d = - vpa(subs(G, vars, x0));
    g0 = vpa(subs(f, vars, x0));
    gt = vpa(subs(f, vars, x0 + t * d));
    gp0 = transpose(d) * vpa(subs(G, vars, x0));
    gpt = transpose(d) * vpa(subs(G, vars, x0 + t * d));
    
    while gt > g0 + m1 * t * gp0 | gpt < m2 * gp0
        if gt > g0 + m1 * t * gp0
            td = t;
        end
        if gt <= g0 + m1 * t * gp0 & gpt < m2 * gp0
            tg = t;
        end
        if td == inf
            t = 10 * td;
        else
            t = (td + tg) / 2;
        end
        
        gt = vpa(subs(f, vars, x0 + t * d));
        gpt = transpose(d) * vpa(subs(G, vars, x0 + t * d));
    end
    
    res_tg = tg;
    res_td = td;
end