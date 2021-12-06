A = rand(10000, 20000);
B = rand(20000, 10000);
tA = transpose(A);
tB = transpose(B);
tic; norm1_ligne_oriente_colonne(A); toc
tic; vecnorm(tA, 1); toc
tic; norm1_ligne_oriente_colonne(B); toc
tic; vecnorm(tb, 1); toc