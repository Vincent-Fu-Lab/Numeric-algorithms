function res = mult_fft(P, Q)
    n = length(P);
    fP = fft(P, 2 * n);
    fQ = fft(Q, 2 * n);
    fPfQ = fP .* fQ;
    res = ifft(fPfQ);
end