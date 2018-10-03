% Graph of successive values of estimator for value of pi

clc;
n_sample = 100000;
X = rand(1,n_sample);
Y = rand(1,n_sample);
P = zeros(1,n_sample);
Pi_pest = zeros(1,n_sample);
p_est = zeros(1,n_sample);
s_pbar = 1;
i = 1;

while s_pbar>0.01*pi*0.25/1.96
    i = i+1;
    if ((X(i)^2 + Y(i)^2) <= 1)
        P(i) = 1;
    end
    p_est(i) = sum(P(1:i))/i;
    Pi_pest(i) = (P(i) - p_est(i))^2;
    s_pbar = sqrt(sum(Pi_pest(1:i))/(i*(i-1)));
end

x = 1:i;
y = 4*p_est(1:i);
plot(x,y)
grid on;
title('Graph of the successive values of the estimator');
xlabel('Number of Samples');
ylabel('Values of the estimator');
n_points = i
Pi_est = 4*p_est(i)
