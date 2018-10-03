% Estimation of pi by area method

% no. of simulations
num = 100; 
N = 0;
M = 0;

% Generate uniform distributed random variables
for i = 1:num
    x = rand(2,1);
    A(i) = x(1)^2 + x(2)^2;
    
    % If point lies within circle, then increment value
    if(x(1)^2 + x(2)^2 <=1)
        N = N+1;
        M = M+1;
    else(x(1)^2 + x(2)^2 >1)
        N = N+1;
    end
end

% Estimated value of pi
A_pi1 = 4*M/N;

% Probability of point lying inside the circle
P1 = M/N;

S = std(A)/sqrt(num);              
T = tinv([0.025  0.975],num-1); 

% Confidence interval for pi
CI1 = mean(A_pi1)+ T*S; 

% Confidence interval for Probability 
CI2 = mean(P1)+- T * (S/ square(num)); 
  
pbar = pi/4;

% Mean of pcap
xbarpbar = pi/4; 

% Variance of pcap
varpbar = (pi/4)*(1-(pi/4)); 

% Standard deviation of pcap 
stdpbar = sqrt(varpbar); 

% For 95% confidence 
b = 1.95; 

% 1% error in value of pi/4
e = 0.01;  
n = (b*stdpbar/(e*pbar))^2;   

% no. of simulations
num = 1000; 
N = 0;
M = 0;

% Generate uniform distributed random variables
for i = 1:num
    x = rand(2,1);
    A(i) = x(1)^2 + x(2)^2;
    
    % If point lies within circle, then increment value
    if(x(1)^2 + x(2)^2 <=1)
        N = N+1;
        M = M+1;
    else(x(1)^2 + x(2)^2 >1)
        N = N+1;
    end
end

% Estimated value of pi
A_pi2 = 4*M/N;

% Probability of point lying inside the circle
P2 = M/N;

S = std(A)/sqrt(num);              
T = tinv([0.025  0.975],num-1); 

% Confidence interval for pi
CI1 = mean(A_pi2)+ T*S; 

% Confidence interval for Probability 
CI2 = mean(P2)+- T * (S/ square(num)); 
  
pbar = pi/4;

% Mean of pcap
xbarpbar = pi/4; 

% Variance of pcap
varpbar = (pi/4)*(1-(pi/4)); 

% Standard deviation of pcap 
stdpbar = sqrt(varpbar); 

% For 95% confidence 
b = 1.95; 

% 1% error in value of pi/4
e = 0.01;  
n = (b*stdpbar/(e*pbar))^2;  

% no. of simulations
num = 10000; 
N = 0;
M = 0;

% Generate uniform distributed random variables
for i = 1:num
    x = rand(2,1);
    A(i) = x(1)^2 + x(2)^2;
    
    % If point lies within circle, then increment value
    if(x(1)^2 + x(2)^2 <=1)
        N = N+1;
        M = M+1;
    else(x(1)^2 + x(2)^2 >1)
        N = N+1;
    end
end

% Estimated value of pi
A_pi3 = 4*M/N;

% Probability of point lying inside the circle
P3 = M/N;

S = std(A)/sqrt(num);              
T = tinv([0.025  0.975],num-1); 

% Confidence interval for pi
CI1 = mean(A_pi3)+ T*S; 

% Confidence interval for Probability 
CI2 = mean(P3)+- T * (S/ square(num)); 
  
pbar = pi/4;

% Mean of pcap
xbarpbar = pi/4; 

% Variance of pcap
varpbar = (pi/4)*(1-(pi/4)); 

% Standard deviation of pcap 
stdpbar = sqrt(varpbar); 

% For 95% confidence 
b = 1.95; 

% 1% error in value of pi/4
e = 0.01;  
n = (b*stdpbar/(e*pbar))^2;  

y = [A_pi1 pi; A_pi2 pi; A_pi3 pi]; 
j = [P1 pi/4; P2 pi/4; P3 pi/4]; 
bar(y, 0.33) 
title('Estimated Value vs Actual Value of Pi'); 
ylabel('Value of Pi');
legend('Estimated Value','Actual Value');
set(gca,'XTick',1:3,'XTickLabel',{'n=100','n=1000','n=10000'});  

figure;
bar(j, 0.33)
title('Probability of Point lying inside the circle'); 
ylabel('Probability');
legend('Estimated Probability','Actual Probability');
set(gca,'XTick',1:3,'XTickLabel',{'n=100','n=1000','n=10000'}); 

% used to determine if the estimate is in the range of +- 1% of value of pi. 
if (((pi-0.01*pi)<=A_pi3) | (A_pi3<=(pi+0.01*pi)))  
    disp('more values required');  
else
    disp('n1 values required'); 
end
	