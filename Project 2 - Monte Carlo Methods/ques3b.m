num = 52;
draws = 40000;
wins = 0;
series = 1:num;

for i = 1:draws
    shuffled = randperm(num);
    wins = wins + ~any(series == shuffled);
    eulersum(i) = draws/wins;
end

eulersum_Fin = draws/wins;

