function [ t_cnt ] = toss_sequence ( heads )
% This function counts the number of tosses until n heads occur in sequence
%
% input arguement:
%       n_heads: Number of heads to be counted
%
% output arguement:
%        t_cnt: Number of tosses until n_heads occur

n_heads_seq = 0;
t_cnt = 0;
sequence = [];

while(n_heads_seq ~= heads)
    sequence = [sequence randi([0 1])];
    [n_heads, n_heads_seq] = number_of_heads(sequence);
    t_cnt = t_cnt + 1;
end

end