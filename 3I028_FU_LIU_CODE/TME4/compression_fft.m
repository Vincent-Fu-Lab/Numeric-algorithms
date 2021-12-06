function ffX = compression_fft(X)
    fX = [];
    n = size(X, 2);
    
    for j = 1:n
        fX = [fX fft(X(:, j))];
    end
    
    ffX = [];
    m = size(X, 1);
    
    for i = 1:m
        ffX = [ffX; fft(fX(i, :))];
    end
end