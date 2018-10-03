% Monte Carlo approach for evaluation of integrals. 

clear all 

n = input('Enter value for n: ')  
syms x; 

% Expected value of integral
Ic = int(sin(x)/(x),0,n*pi)    

% Random number generator
z = input('Enter z for a large sequence: ')  

% Limits of integrals
a = (n-1)*pi;      
b = n*pi; 
x =(b-a)*rand(1,z)+a; 
for i=1:z     
    fx(i)=sin(x(i))/(x(i));  %sin(x)/(x) 
end

% Average of sum to get approximate value
Imc =(b-a)*(sum(fx)/z) 

% Error
error = 100*(Ic-Imc)/Ic  

% Confidence Interval
S = std(x)/sqrt(z);
T = tinv([0.025  0.975],z-1);
CT = mean(Imc) + T*S;
