% Part (2) : Genrate uniform random variables in [0,1] and find it's mean
%            and variance.

i = input('Enter the number of random numbers between 0 and 1: ')
X = rand(i,1);

% Find the mean and variance of the generated numbers
stats = [mean(X) std(X) var(X)]

% Expected value of mean and variance
exp_mean = (0+1)/2;
exp_var = (1-0)^2/12;

% Estimate of variance of sample mean
var_est = var(X)/i;
