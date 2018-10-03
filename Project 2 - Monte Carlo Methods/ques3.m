% Deck of cards problem

% no. of simulations
num = 10; 

% Generate uniform distributed random variables
a = zeros(1,num);
r = randi([1 num],1,num);

for i = 1:num
   a(r(i)) = a(r(i)) + 1; 
end

% for i = 1:num
%     r = randi([1 num], 1);
%     a(r) = a(r) + 1;
% end

histogram(r);
xlabel('Card numbers ranging from 0 to 10');
ylabel('Frequency');
title('Histogram of frequency of cards drawn');

% no. of simulations
num = 52; 

% Generate uniform distributed random variables
a = zeros(1,num);
r = randi([1 num],1,num);

for i = 1:num
   a(r(i)) = a(r(i)) + 1; 
end

figure;
histogram(r);
xlabel('Card numbers ranging from 0 to 52');
ylabel('Frequency');
title('Histogram of frequency of cards drawn');
% 
% % no. of simulations
% num = 100; 
% 
% % Generate uniform distributed random variables
% 
% r = randi([1 num],1,num);
% figure;
% histogram(r);
% xlabel('Card numbers ranging from 0 to 52');
% ylabel('Frequency');
% title('Histogram of frequency of cards drawn');
% 
% % no. of simulations
% num = 1000; 
% 
% % Generate uniform distributed random variables
% 
% r = randi([1 num],1,num);
% figure;
% histogram(r);
% xlabel('Card numbers ranging from 0 to 52');
% ylabel('Frequency');
% title('Histogram of frequency of cards drawn');
% 
% % no. of simulations
% num = 10000; 
% 
% % Generate uniform distributed random variables
% 
% r = randi([1 num],1,num);
% figure;
% histogram(r);
% xlabel('Card numbers ranging from 0 to 52');
% ylabel('Frequency');
% title('Histogram of frequency of cards drawn');