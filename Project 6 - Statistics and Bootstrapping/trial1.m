clc;
clear all;

% Part a
Nos = [37.12 8.45 28.96 0.27 36.22 2.78 3.98 32.79 0.14 24.87 1.33 33.25 19.91 30.43 25.84 33.55 31.10 1.86 30.57 5.34 45.39 28.67 7.12 35.38 1.92 9.25 12.55 27.49 33.72 2.30 28.32 30.92 32.62 24.10 33.56 35.62 27.88 20.71 36.62 24.03 28.00 31.44 33.32 5.01 1.30 4.56 2.28 11.33 0.24 8.53 5.27 18.52 7.63 31.03 4.06 12.83 15.43 8.75 4.65 5.21 7.90 26.48 6.81 32.20 25.69 18.18 4.48 30.33 1.68 28.44 23.26 3.35 0.17 8.90 13.29 31.54 26.16 22.79 6.89 27.92 30.99 6.93 13.27 10.08 28.95 13.40 4.57 34.10 0.76 36.40 0.60 39.74 1.11 2.40 1.05 34.10 29.95 1.94 0.16 1.43];
Exp_val = mean(Nos);
Variance = var(Nos);

% Part b
E = zeros(1,100);
E(1) = Nos(1);
for i = 2:100
    E(i) = E(i-1) + Nos(i);
end

figure
plot(E);
xlabel('Number');
ylabel('cdf');
title('Discrete Approximation to the cdf');

% Part c
figure
edges = [0:5:50];
h = histogram(Nos, edges);
Val = h.Values;
xlabel('Range of nos. 0-5, 6-10 and so on');
ylabel('No. of counts');


Val = Val/100;
figure
h = histogram(Nos, 'Normalization', 'probability');
h.BinEdges = [0:5:50];
xlabel('Range of nos. 0-5, 6-10 and so on');
ylabel('Probability');
title('Probability Mass Distribution');

% Part d
M = 50;
sample1 = zeros(M,100);

for i = 1:M
    for j = 1:100
        
        pos = randi(length(Nos));
        sample1(i,j) = Nos(pos);
        
    end
end

sample_mean1 = mean(sample1,2);
sample_var1 = var(sample1.').';

% Part e
sm1 = (sample_mean1 - Exp_val).^2;
S1 = sum(sm1);
MSE1 = S1/M;

% Part f
sv1 = (sample_var1 - Variance).^2;
S2 = sum(sv1);
MSE2 = S2/M;





