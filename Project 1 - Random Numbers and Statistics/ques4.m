% Part (5) : Bonus Points

i = input('Enter the number of random numbers between 0 and 1: ')
X = rand(i,1);

% Generation of histogram
[N, edges]= histcounts(X,10);
bar(0:1:9,N)
xlim([0 9])
xlabel('Intervals')
ylabel('Random numbers') 
hold on 
A(1:1, 1:10)=i/10;    
plot(0:1:9,A,'green')    
xlim([0 9]) 
	