syms x1 x2
f = 100 * (x2 - x1^2)^2 + (1 - x1)^2;
G = gradient(f, [x1, x2])
H = hessian(f, [x1, x2])

Gxe = vpa(subs(G, [x1, x2], [1, 1]))
Hxe = vpa(subs(H, [x1, x2], [1, 1]))
[M_vect_p, MD_val_p] = eig(Hxe);
MD_val_p

ezcontour(f, [-1.5; 2; -3; 3])
hold on 
res = newton_pv(f, [x1; x2], [-1; -2]);
for x = res
    plot(x(1), x(2), 'k.');
end
hold off

xe = [1; 1];
for x = res
    erreur = norm(x - xe)
end

