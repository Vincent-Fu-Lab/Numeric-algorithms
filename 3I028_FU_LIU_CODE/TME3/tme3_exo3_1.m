syms x
f = x^3 - cos(x);
res = newton_non_lineaire(f, 1, 10^-5)