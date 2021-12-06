function R = newton_f(A, eps_erreur)
    tA = transpose(A);
    R = tA / trace(tA * A);
    I = eye(size(A, 1));
    
    while norm(I - R * A, 2) >= eps_erreur
        R = 2 * R - R * A * R;
    end
end