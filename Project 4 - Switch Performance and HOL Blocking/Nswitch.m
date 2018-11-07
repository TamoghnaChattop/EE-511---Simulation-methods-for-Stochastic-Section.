close all;
clear;
clc;

prompt = 'What is the size of the switch?';
N = input(prompt)

Hash = zeros(1,N);
total = 0;
steps = 1000;
num = N;

for j = 1:steps
    
    empty = randi([1,N],1,num)
    for i = 1:num
        Hash(empty(i)) = Hash(empty(i)) + 1;
    end
    num = 0;

    for i = 1:N
        if Hash(i) > 0
            Hash(i) = Hash(i) - 1;
            num = num + 1;
        end
    end
    
    total = total + num;
end

pps = total/steps;

    
    


