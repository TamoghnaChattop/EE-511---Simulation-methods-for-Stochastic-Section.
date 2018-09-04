function [ t_cnt ] = toss_count ( heads )
% This function counts the number of tosses until n heads occur
%
% input arguement:
%       n_heads: Number of heads to be counted
%
% output arguement:
%        t_cnt: Number of tosses until n_heads occur

n_heads = 0;
t_cnt = 0;

while(n_heads ~= heads)
    if (randi([0 1]))
        n_heads = n_heads + 1;
    end
    
    t_cnt = t_cnt + 1;
end

end
    