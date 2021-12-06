function [res_a, res_b] = sect_doree(f, a, b)
    res_a = a;
    res_b = b;
    tho = (sqrt(5) - 1) / 2;
    x1 = res_a + (1 - tho) * (res_b - res_a);
    x2 = res_a + tho * (res_b - res_a);
    f1 = vpa(subs(f, x1));
    f2 = vpa(subs(f, x2));
    i = 0;
    
    while (res_b - res_a) > tho & (i < 100)
        if f1 > f2
            res_a = x1;
            x1 = x2;
            f1 = f2;
            x2 = res_a + tho * (res_b - res_a);
            f2 = vpa(subs(f, x2));
        else
            res_b = x2;
            x2 = x1;
            f2 = f1;
            x1 = res_a + (1 - tho) * (res_b - res_a);
            f1 = vpa(subs(f, x1));
        end
        
        i = i + 1;
    end
end