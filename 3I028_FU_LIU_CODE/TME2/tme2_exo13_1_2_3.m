syms x1 x2
f = x1^2 + 2 * x2^2;
res = metho_gradient(f, [x1; x2], [-1; -1], 0.1, 10^-5)
res = metho_gradient(f, [x1; x2], [-1; -1], 0.5, 10^-5)
res = metho_gradient(f, [x1; x2], [-1; -1], 1, 10^2)

g = 100 * (x2 - x1^2)^2 + (1 - x1)^2;
res = metho_gradient(g, [x1; x2], [-1; 1.2], 0.001, 10^-2)

res = metho_opt(g, [x1; x2], [-1; 1.2], 10^-5)