function R = Iterative(nume, d, eps)

    % citesc fisierul de intrare si formez matricile A si K
    [N, A, K, ~, ~] = inputs(nume);

    M = transpose(PR_Inv(K) * A);

    % Calculez PR la timpul t -> PR_t -> vector coloana de N elem
    % linia i -> PR al paginii i
    I = ones(N, 1);
    PR_t = ones(N, 1);
    for i = 1 : N
        PR_t(i) = 1 / N; % PR la timpul t initial 0
    end
    PR_t1 = d * M * PR_t + (1-d) / N * I; % PR la timpul t + 1
    while abs(PR_t1 - PR_t) >= eps
        PR_t = PR_t1;
        PR_t1 = d * M * PR_t + (1-d) / N * I;
    end
    R = PR_t1;
end