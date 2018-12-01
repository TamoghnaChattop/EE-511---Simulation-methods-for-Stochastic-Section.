clc;
clear all;

tic
c = 0.27067;
E = zeros(1,1000);
count = 1;

while count<1001
    
    U = rand;
    Y = rand;
    H = Y.^2.*exp(-Y)/(c*2);
    
    if (U <= H)
        E(count) = Y;
        count = count+1;
    end
end

figure
histogram(E)
xlabel('En');
ylabel('Freq');

M = mean(E);
V = var(E);

toc
    