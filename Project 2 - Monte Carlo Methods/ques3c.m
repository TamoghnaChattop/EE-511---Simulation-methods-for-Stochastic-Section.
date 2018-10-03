% Question 2

% no. of simulations
num = 10000; 

% Random number to be searched for
k = randi([1 num], 1);
count = 0;
for i = 1:num
    flag = 0;                      % To indicate Not Seeing the number
    count1 = 1;
    while(count1<=num && flag==0)
        r = randi([1 num], 1);
        if(r == k)
            flag = 1;
        end
        count1 = count1+1;
    end  
    if(flag == 0)
        count = count+1;
    end
end

p = count/num;
