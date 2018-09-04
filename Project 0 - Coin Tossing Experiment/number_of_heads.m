function [ n_heads, n_heads_max ] = number_of_heads( trial )
% This function helps to count the number of heads in an experiment. 
% It also counts the maximum number of heads that occured consecutively
%
% input arguements:
%     trial: A random sequence of 1's and 0's
%
% output arguements:
%     n_heads: Number of heads in the random sequence
%     n_heads_max: max number of consecutive 1's (heads) in the sequence

% Count the number of 1's (heads) from trial
n_heads = sum(trial==1);

% Find the longest sequence of consecutive 1's (heads)
trial_pad = [0, trial, 0];
rising_edge = find(diff(trial_pad)==1);
falling_edge = find(diff(trial_pad)==-1);

n_heads_max = max(falling_edge - rising_edge);

if (isempty(n_heads_max));
    n_heads_max = 0;
end

end
