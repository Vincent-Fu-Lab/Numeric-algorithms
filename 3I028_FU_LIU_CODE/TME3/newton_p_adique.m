function xi = newton_p_adique(f, x1, p, k)
    fp = diff(f);
    fp1 = mod(subs(fp, x1), p);
    s = inverse_mod(fp1, p);
    f1 = subs(f, x1);
    xi = mod(x1 - s * f1, p^2)
    i = 2;
    
    while i < k
        x1 = xi;
        fp1 = mod(subs(fp, x1), p);
        s = inverse_mod(fp1, p^i);
        f1 = subs(f, x1);
        i = i + 1;
        xi = mod(x1 - s * f1, p^i)
    end
    
    res = xi;
end