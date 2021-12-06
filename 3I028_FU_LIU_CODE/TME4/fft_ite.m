function r = fft_ite(a, racine_n)
    if real(racine_n) == 1
        r = a;
        return
    end
    
    n = length(a);
    
    if n == 2 
        r = [a(1) + a(2), a(1) + racine_n * a(2)];
        return
    end
    
    ap = a(1:2:n);
    ai = a(2:2:n);
    m = length(ap);
    ap_trie = [];
    ai_trie = [];
    
    % tri des coefficients de pp et pi afin d'obtenir le circuit sous forme
    % d'un arbre diviser pour regner
    for i = 1:2:(m / 2)
        ap_trie = [ap_trie ap(i) ap(i + m / 2)];
        ai_trie = [ai_trie ai(i) ai(i + m / 2)];
    end
    for k = 2:2:(m / 2)
        ap_trie = [ap_trie ap(k) ap(k + m / 2)];
        ai_trie = [ai_trie ai(k) ai(k + m / 2)];
    end
    
    fap = [];
    fai = [];
    
    % calcul des coefficients de la FFT
    for l = 0:(m - 1)
        coef_fap = ap_trie;
        coef_fai = ai_trie;
        e = length(coef_fap);
        
        while length(coef_fap) ~= 1
            tmpcap = [];
            tmpcai = [];
            e = length(coef_fap);
            
            for u = 1:2:e
                tmpcap = [tmpcap coef_fap(u) + ((racine_n^2)^(e / 2))^l * coef_fap(u + 1)];
                tmpcai = [tmpcai coef_fai(u) + ((racine_n^2)^(e / 2))^l * coef_fai(u + 1)];
            end
            
            coef_fap = tmpcap;
            coef_fai = tmpcai;
        end
        
        fap = [fap coef_fap];
        fai = [fai coef_fai];
    end
    
    
    r = zeros(1, n);
    for j = 1:n/2
        r(j) = fap(j) + racine_n^(j - 1) * fai(j);
        r(j + n/2) = fap(j) - racine_n^(j - 1) * fai(j);
    end
end
        