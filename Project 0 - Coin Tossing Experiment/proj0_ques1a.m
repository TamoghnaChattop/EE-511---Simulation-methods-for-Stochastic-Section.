% PLOTTING DISTRIBUTIONS

clc;
clear;
close all;

N = 100;
n_trials = 1000;

for m = 1:n_trials
    trial = randi([0,1],[1,N]);
    [n_heads(m), n_head_max(m)] = number_of_heads(trial);
end

figure('Name', 'Project 0 (Part A)');
subplot(2,1,1);
histogram(n_heads, 'Normalization','probability');
xlim([0 100]);
grid on;
title('Histogram of -  Number of Heads');
xlabel('Number of Heads');
ylabel('Probability');

subplot(2,1,2);
histogram(n_head_max, 'Normalization','probability');
xlim([0 100]);
grid on;
title('Histogram of -  Longest run of Heads');
xlabel('Longest run of Heads');
ylabel('Probability');