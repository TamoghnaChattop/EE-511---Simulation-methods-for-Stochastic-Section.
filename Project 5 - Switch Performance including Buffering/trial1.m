close all;
clear;
clc;

prompt = 'What is the size of the switch?';
N = input(prompt)

prompt = 'What is the size of the buffer?';
B = input(prompt)

prompt = 'What is the arrival probability of a packet?';
Pa = input(prompt)

Buffer = zeros(N,B);
total = 0;
dropped = 0;
steps = 1000;
Ip = zeros(steps,1);
sum = 0;

for j = 1:steps
   
    Hash = zeros(N,1);
    
    for m = 1:N
        
        x = rand;
        if x < Pa
            z = find( Buffer(m,:) == 0)
            Z = isempty(z)
            if Z == 0
                Buffer(m,z(1)) = randi([1,N],1,1)
            else
                dropped = dropped + 1;
            end
        end
    end
    
    for m = 1:N  
        if Buffer(m,1) == 0
            continue;
        end
        Hash( Buffer(m,1)) = Hash(Buffer(m,1)) + 1;
    end
    
    for m = 1:N
        if Hash(m,1) == 0
            continue;
        end
        Hash1(m,1) = randi([1,Hash(m,1)],1,1);
    end
    
    for m = 1:N
        if (Buffer(m,1) == 0)
            continue;
        end
        if (Hash1(Buffer(m,1)) == 0)
            continue;
        elseif (Hash1(Buffer(m,1)) == 1)
            Hash1(Buffer(m,1)) = 0;
            Buffer(m,:) = [Buffer(m,2:end),0]
            total = total + 1;
        else
            Hash1(Buffer(m,1)) = Hash1(Buffer(m,1)) - 1;
        end
    end
    
    Num = nnz(Buffer);
    Ip(j,1) = Num;
    sum = sum + Num;
        
end

figure;
bar(Ip);
title('Histogram of the number of packets in the buffer at input side');
xlabel('Time step');
ylabel('Number of packets in the buffer');
