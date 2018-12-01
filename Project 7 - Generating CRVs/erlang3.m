clc;
clear all;

tic
n = 3;
l = 1;
E = zeros(1,1000);
S = zeros(1,1000);

for i = 1:n
    
    Y = rand(1,1000);
    X = -log(Y);
    E = E + X;
    pdf = (l*E).^(n-1).*exp(-E*l)*l/(factorial(n-1));
end

S = S + (E/i);

figure
histogram(E)
xlabel('En');
ylabel('Freq');
figure
histogram(E,'normalization','prob')
xlabel('En');
ylabel('Probability');
figure
histogram(X)
title('Histogram for X');
xlabel('X');
ylabel('N');

M = mean(E);
V = var(E);

toc