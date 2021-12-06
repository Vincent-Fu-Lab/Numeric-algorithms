function x1 = newton(f, x0, eps_erreur)
    fp1 = diff(f);
    fp2 = diff(fp1);
    f1 = vpa(subs(fp1, x0));
    f2 = vpa(subs(fp2, x0));
    x1 = x0 - f1 / f2;
    
    while abs(vpa(subs(f, x1)) - vpa(subs(f, x0))) >= eps_erreur
        x0 = x1; 
        f1 = vpa(subs(fp1, x0));
        f2 = vpa(subs(fp2, x0));
        x1 = x0 - f1 / f2;
    end
end
        