function [a, b] = continua(val1, val2)
% 0, 0 <= x < val1
% ax + b, val1 <= x <= val2
% 1, val2 < x <= 1

% functia trb sa fie continua deci trb sa fie continua in punctele
% val1 si val2 deci limitele ar trebui sa fie urmatoarele:
% a*val1 + b = 0
% a*val2 + b = 1

% => a(val1 - val2) = -1 =>a = -1 / (val1 - val2)
% => b = -a * val1 = val1 / (val1 - val2)

a = -1 / (val1 - val2);
b = val1 / (val1 - val2);
end