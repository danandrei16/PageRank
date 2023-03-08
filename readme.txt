functia inputs.m:
Citesc toate numerele din fisier. Mai intai pe N, apoi odata cu citirea celor N linii
voi construi matricea de adiacenta A (initial cu 0 peste tot), cu 1 unde exista legaturi
intre paginile i si j. Tot cu citirea construiesc pe K - matrice diagonala cu numarul
de legaturi al paginii i pe K(i,i).
La final citesc cele doua valori ptr task3 si inchid fisierul

PR_Inv.m:
Calculez Q si R folosind Gram-Schmidt modificat. Din A = QR => R * A^(-1) = Qt => 
rezolv sistemul prin functia Upper_System.m

Task1 (Iterative.m):
Apelez inputs si calculez pe M dupa formula (K^(-1)*A)t. Pornind de la vectorul coloana
cu fiecare element 1/N, parcurg iteratii cu formula PR(t+1) = d*M*PR(t)+(1-d)/N*I (I
vector coloana cu 1). Iteratiile se termina cand |PR(t+1) - PR(t)| < epsilon si vectorul
cautat este cel de la t+1.

Task2 (Algebraic.m):
Am pornit de la formula lui R folosita si in Task1, de unde am scos formula
R = (I - d * M) ^ (-1) * (1 - d) / N * I1, unde I este matricea identitate si I1 
vector coloana cu elementele 1; deci R este vectorul PageRank.

continua.m va returna a si b pentru care functia este continua, deci continua si in
val1 si val2, de unde iese sistemul de ecuatii a*val1+b=0; a*val2+b=1; Rezolvandu-l,
am ajuns la formulele a=-1/(val1-val2) si b=val1(val1-val2)

Task3 (Apartenenta.m): y primeste valoarea corespunzatoare functiei (depinzand de
valoarea lui x)

PageRank.m:
formez string-ul <nume>.out in care voi afisa N si rezultatele de la Iterative si Algebraic.
Apoi formez matricea N x 3: coloana 1 are nr 1 .. N, la fel si a doua, iar a treia
are vectorul rezultat din Algebraic. Matricea o sortez dupa coloana 3 descrescator
(doar prima coloana nu o schimb) si afisez dupa formatul cerut.

main.m: apeleaza PageRank pentru cele doua exemple (graf1, graf2) si scrie in fisierele .out