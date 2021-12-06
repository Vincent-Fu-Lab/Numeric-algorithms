load clown.mat;
colormap('gray');
image(X);
ffX = compression_fft(X)
t = taux(ffX, 10^-5)