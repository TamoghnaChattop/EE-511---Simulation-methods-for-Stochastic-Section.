close all;
clear;
clc;

times = 1000;
casei = 1;

for p = 0:0.1:1
    
    N1_pkt = zeros(1,times);
    N2_pkt = zeros(1,times);
    throughput = zeros(1,times);
    
    for i = 1:times
        [N1_pkt(i), N2_pkt(i), throughput(i)] = Load_Data(p,casei);
    end
    
    p
    Mean_N1_pkt = mean(N1_pkt)
    Mean_throughput = mean(throughput)
end
