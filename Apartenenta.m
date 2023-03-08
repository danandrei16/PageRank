function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1
    if x >= 0
        if x < val1
            y = 0;
        end
    end

    if x >= val1
        if x <= val2
            [a, b] = continua(val1, val2); % a si b a.i. f este continua
            y = a * x + b;
        end
    end

    if x > val2
        if x <= 1
            y = 1;
        end
    end
end