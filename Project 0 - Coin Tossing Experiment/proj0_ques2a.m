clc;
clear;
close all;

% Number of tosses until nth head occurs
n_toss = zeros(1,4);
for k = 1:4
    n_toss(k) = toss_count(k);
    fprintf('Number of tosses for %d Head: %d\n',k,n_toss(k));
end

fprintf('\n');

% Number of tosses until n consecutive heads occur
for k = 2:4
    fprintf('Number of tosses until %d Consecutive Heads occur: %d\n',k,toss_sequence(k));
end