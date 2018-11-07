buffer = zeros(1,100);
k = 1;

for p = 0.1:0.05:1
    for i = 1:100
        [nstate,efficiency1,efficiency2] = Input(p,0.5,0.5,200);
        buffer(i) = sum(nstate);
        efficiency(i) = efficiency2;
    end
    
    recordNumber(k) = mean(buffer);
    recordEfficiency(k) = mean(efficiency);
    k = k+1;
end

figure,
plot (0.1:0.05:1 ,recordNumber);
title ( 'Packets in buffer given different p (200 time slots)');
xlabel ( 'p' ); 
ylabel( 'Number of packet in buffer after 200 time slots');

figure,
plot (0.1:0.05:1 ,recordEfficiency);
title ( 'Efficiency given different p(200 time slots)');
xlabel ( 'p' ); 
ylabel( 'Efficiency (\times 2 is the number of packet processed per time slot)');
