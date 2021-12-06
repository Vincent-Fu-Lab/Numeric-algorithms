x = 1:1:1000;
z = [];
y = [];
for i = x
    P = rand(1, i);
    Q = rand(1, i);
    tic;
    mult_naive(P, Q);
    t = toc;
    z = [z t];
    tic;
    mult_fft(P, Q);
    t2 = toc;
    y = [y t2];
end

plot(x, y, 'red', x, z, 'blue')

    