clc;
clear all;

tic
n = 3;
l = 1;
S = ones(1,1000);

for i = 1:n
    Y = rand(1,1000);
    S = S.*Y;
end

E = -log(S);

figure
histogram(E)
xlabel('En');
ylabel('Freq');
figure
histogram(E,'normalization','prob')
xlabel('En');
ylabel('Probability');
figure
histogram(S)
xlabel('Sn');
ylabel('N');

M = mean(E);
V = var(E);
toc