clc;
clear all;
close all;

% Number of coin tosses
N = 100; 

% Generate a uniformly distributed random vector of 1's and 0's
trial = randi([0,1],[1,N]);

% Evaluate number of heads and the longest run of heads
[n_heads, n_head_max] = number_of_heads(trial);

% Display the output on command window
fprintf('Number of heads : %d\n',n_heads);
fprintf('Longest run of heads : %d\n',n_head_max);
