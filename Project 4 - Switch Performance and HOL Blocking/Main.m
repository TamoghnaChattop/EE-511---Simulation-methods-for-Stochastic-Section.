close all;
clear;
clc;

times = 1000;
p = 0.5;
casei = 1;

N1_pkt = zeros(1,times);
N2_pkt = zeros(1,times);
throughput = zeros(1,times);

for i = 1:times
    [N1_pkt(i), N2_pkt(i), throughput(i)] = Load_Data(p,casei);
end

Mean_N1_pkt = mean(N1_pkt)

figure,
A = 0:1:5;
[a,b] = hist(N1_pkt,A);
bar(b,a/sum(a));
grid on;
title('Histogram of the number of packets in the buffer at input 1');
xlabel('Number of Packets');
ylabel('Frequency');

Mean_throughput = mean(throughput);

figure,
A = unique(throughput);
dist_throughput = histc(throughput,A);
a = dist_throughput/sum(dist_throughput);
plot(A,a);
grid on;
title('Distribution of the number of packets processed per slot by the switch');
xlabel('PPS');
ylabel('Frequency');