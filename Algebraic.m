function R = Algebraic(nume, d)
    [N, A, K, ~, ~] = inputs(nume);
    M = transpose(PR_Inv(K) * A);
    % voi determina vectorul PR dupa formula (I - d*M) ^ (-1) * (1-d) / N * 1
    I = eye(N); % matrice cu 1 pe DP
    I1 = ones(N, 1); % vector coloana cu 1 (N linii)

    % din Iterative: R = dMR + (1 - d) / N * I1 => R(I - dM) = (1 - d) / N
    % * I1 => formula:
    R = PR_Inv(I - d * M) * (1 - d) / N * I1;
end