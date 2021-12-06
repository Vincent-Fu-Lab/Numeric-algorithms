function xk = gradient_conjugue(A, b, x0)
    xk = x0;
    rk = b - A * x0;
    pk = rk;

    for i = 1:length(b)
        alphak = (pk.' * rk) / (pk.' * A * pk);
        xk = xk + alphak * pk;
        rk = rk - alphak * A * pk;
        betak = - (pk.' * A * rk) / (pk.' * A * pk);
        pk = rk + betak * pk;
    end
end

