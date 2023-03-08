function [N, A, K, val1, val2] = inputs(nume)
    f = fopen(nume, "r");
    N = fscanf(f, "%d", 1); % numar pagini

    A = zeros(N); % matrice de adiacenta, initial 0 peste tot
    K = zeros(N); % matricea diagonala cu gradele externe
    % construiesc matricea de adiacenta si matricea diagonala, simultan
    for i = 1:N
        nod = fscanf(f, "%d", 1); % nodul curent (= i)
        nr_vecini = fscanf(f, "%d", 1); % nr. de 1 pe linia i
        K(i,i) = nr_vecini;
        for j = 1:nr_vecini
            vecin = fscanf(f, "%d", 1); % nodul cu care i are legatura
            A(nod,vecin) = 1;
        end
    end

    val1 = fscanf(f, "%f", 1);
    val2 = fscanf(f, "%f", 1);

    fclose(f);
end

