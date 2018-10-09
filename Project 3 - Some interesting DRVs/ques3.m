% Maxima of Uniform Random Varibles

% Large Sequence 
N = input('Enter N: ')	
n = input('Enter n: ')
K1 = zeros(1,N);
K2 = zeros(1,N);

% Generating Uniformly distributed random numbers
for x=1:N
    
    u= rand(1,n);
    
    % Recording maximum value
    record=zeros(1,20);	
    max=0;
    j=1;
    
    for y=1:n
        
        % Recording maximum value
        record(1)=1;	 
        if max < u(y)
            max = u(y); 
            record(j)=y; j=j+1;
        end
    end
    
    % Values for X2 and X3
    K1(x)=record(2)-record(1);	
    K2(x)=record(3)-record(2);
end

% mean(K(x))
t=1:1:40;
[a,b] = hist(K1,t)
bar(b, a/sum(a))
title('Probability Histogram for X2') 
ylabel('Probability')
xlabel(' Values of X2')

figure;
[a,b] = hist(K2,t)
bar(b, a/sum(a))
title('Probability Histogram for X3') 
ylabel('Probability')
xlabel(' Values of X3')

