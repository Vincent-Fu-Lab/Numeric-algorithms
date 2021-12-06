x = [];
for o = 0:12
    k = 2^o;
    x = [x k];
end
hold on
for j = x
    poly = randi([1 10], 1, j);
    racine = exp(- (2 * pi * i) / j);    
    tic;
    fft_recu(poly, racine);
    t = toc;
    plot(j, t, 'r+')
    tic;
    fft_ite(poly, racine);
    t = toc;
    plot(j, t, 'b+')
    tic;
    fft(poly);
    t = toc;
    plot(j, t, 'g+')
end
hold off
    