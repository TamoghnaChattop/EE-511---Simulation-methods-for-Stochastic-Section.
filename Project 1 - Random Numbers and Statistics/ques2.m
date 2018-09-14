% Part (3) : Genrate N=100 uniform random variables in [0,1] 50 times to 
%            get a set of sample means. Compare it to a normal curve.

N = 100;
no_trials = 50;

% Generate the 50 means

for m = 1:no_trials
    X = rand(N,1);
    Mean_trials(m) = mean(X);
end

histfit(Mean_trials)