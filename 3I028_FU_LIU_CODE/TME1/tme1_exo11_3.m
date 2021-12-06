syms x
fa = sin(x);
fb = atan(x)^2;
fc = abs(log(x));
fd = abs(x);
[res_a res_b] = sect_doree(fa, 0, pi / 2)
x_newton = newton(fa, 0.1, 10^-4)
[res_a res_b] = sect_doree(fb, -1, 1)
x_newton = newton(fb, 0.1, 10^-4)
[res_a res_b] = sect_doree(fc, 1 / 2, 4)
[res_a res_b] = sect_doree(fd, -1, 1)

