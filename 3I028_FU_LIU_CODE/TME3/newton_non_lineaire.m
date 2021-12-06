function x1 = newton_non_lineaire(f, x0, eps_erreur)
    fp = diff(f);
    f1 = vpa(subs(f, x0));
    f2 = vpa(subs(fp, x0));
    x1 = x0 - f1 / f2;
    
    while abs(x1 - x0) >= eps_erreur
        x0 = x1;
        f1 = vpa(subs(f, x0));
        f2 = vpa(subs(fp, x0));
        x1 = x0 - f1 / f2;
    end
end