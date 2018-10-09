% Sum of Uniform Random Varibles

N = 1000;  % Large Sequence
n = 100;
K = zeros(1,N);

for x = 1:N
     
    % Generate uniformly distribted random numbers
    u = rand(1,n);
    i = 1;
    
    % Check whether the sum of Ui and Ui+1 <=1
    while sum(u(1:i))<=1
        i = i+1;
    end
    
    % Obtaining the minimum of the sum
    K(x) = i;
end

E1 = mean(K)

N = 10000;  % Large Sequence
n = 100;
K = zeros(1,N);

for x = 1:N
     
    % Generate uniformly distribted random numbers
    u = rand(1,n);
    i = 1;
    
    % Check ehether the sum of Ui and Ui+1 <=1
    while sum(u(1:i))<=1
        i = i+1;
    end
    
    % Obtaining the minimum of the sum
    K(x) = i;
end

E2 = mean(K)

N = 100000;  % Large Sequence
n = 100;
K = zeros(1,N);

for x = 1:N
     
    % Generate uniformly distribted random numbers
    u = rand(1,n);
    i = 1;
    
    % Check ehether the sum of Ui and Ui+1 <=1
    while sum(u(1:i))<=1
        i = i+1;
    end
    
    % Obtaining the minimum of the sum
    K(x) = i;
end

E3 = mean(K)

e = [E1 exp(1); E2 exp(1); E3 exp(1)]
bar(e,0.33)
title('Sum of Uniform Random Variables');
ylabel('Value of E[N]');
legend('Estimated Value','Actual Value');
set(gca, 'XTick', 1:3, 'XTickLabel', {'N = 1000','N = 10000', 'N = 100000'})