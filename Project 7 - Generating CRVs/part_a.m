clc;
clear all;

n = 3;
l = 1;
E = zeros(1,1000);

for i = 1:n
    
    Y = rand(1,1000);
    X = -log(Y);
    E = E + X;
    
end

M = mean(E);
V = var(E);

figure
histogram(E,'normalization','prob')
xlabel('En');
ylabel('Probability');
hold on
x = 0:0.1:10;
y = exppdf(x,M);
plot(x,y);