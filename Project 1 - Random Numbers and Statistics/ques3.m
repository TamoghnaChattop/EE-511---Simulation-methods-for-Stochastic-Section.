% Part (4) : Genrate uniform random variables in [0,1] and find it's
%            co-variance relation.
           

i = input('Enter the number of random numbers between 0 and 1: ')
X = rand(i+1,1);

% The different summations used in the value
sum1 = 0;
for m = 1:i
    sum1 = sum1 +  X(m)*X(m+1);
end

sum2 = 0;
for m = 1:i
    sum2 = sum2 + X(m);
end

sum3 = 0;
for m = 2:i+1
    sum3 = sum3 + X(m);
end

% The value of z

z = ((sum1)/i) - ((sum2*sum3)/(i^2))



