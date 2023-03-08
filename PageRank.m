function [R1, R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
    f = strcat(nume, ".out"); % string-ul nume.out
    out = fopen(f, "w");
    R1 = Iterative(nume, d, eps); % task1
    R2 = Algebraic(nume, d); %t ask2
    % N este nr de linii (adica nr de pagini)
    [N, ~] = size(R1); % nr de elemente (linii) din R1
    fprintf(out, "%d\n", N); % nr_elem
    fprintf(out, "%f\n", R1); % PageRank1
    fprintf(out, "\n");
    fprintf(out, "%f\n", R2); % PageRank2
    fprintf(out, "\n");

    [N, ~, ~, val1, val2] = inputs(nume); % input-uri
    % nu am nevoie de A sau K aici
    x = ones(N,1); % declarare vector coloana
    for i = 1 : N
        x(i) = i; % vectorul 1 2 .. N (indicii PageRank)
    end
    y = ones(N, 1);
    for i = 1 : N
        y(i) = Apartenenta(R2(i), val1, val2); % calculeaza u(R2(i))
    end
    %v(:, 1) = x; % prima coloana afisata, intial 0;
    % dupa sortare o sa aibe indicii 1..N
    v(:, 2) = x; % a doua coloana, are 1..N si vor fi afisati in
    % ordinea ceruta
    v(:, 3) = y; % vectorul PageRank dupa care se va sorta matricea (Nx3)
    % descrescator
    v = sortrows(v, 3, 'descend');
    v(:, 1) = x; % coloana 1 = coloana 2 din matrice nesortata
    for i = 1 : N
        fprintf(out, "%d %d %f\n", v(i, 1), v(i, 2), v(i, 3));
    end
end