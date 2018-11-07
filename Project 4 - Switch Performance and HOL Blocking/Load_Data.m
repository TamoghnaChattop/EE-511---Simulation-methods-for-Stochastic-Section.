function [N1,N2,throughput] = Load_Data(p, casei)

n_slot = 1000;
P1 = rand(1,n_slot);
P2 = rand(1,n_slot);
R11 = rand(1,n_slot);
R21 = rand(1,n_slot);

% Packets processed per slot
pps = zeros(1,n_slot);
throughput = 0;
N1 = 0;           % Number of packets in buffer 1
N2 = 0;           % Number of packets in buffer 2

if casei == 1
    r = 0.5;
else
    r = 0.75;
end

for i = 1:n_slot
    % Situation that input 1 and input 2 both have packets
    
    if(P1(i)<p && P2(i)<p)
        % Input 1 switches to output 1 and input 2 switches to output 2
        
        if(R11(i)<r && R21(i)>r)
            pps(i) = 2;
            [N1] = popbuffer(N1);
            [N2] = popbuffer(N2);
        end

        % Input 1 switches to output 1 and input 2 switches to output 2
        
        if(R11(i)>r && R21(i)>r)
            P_sel = rand(1);
            
            % Select packet with the same probability
            if P_sel <= 0.5
                pps(i) = 1;
                [N1] = popbuffer(N1);
                [N2] = pushbuffer(N2);
            else
                pps(i) = 1;
                [N1] = pushbuffer(N1);
                [N2] = popbuffer(N2);
            end
        end
        
        % Input 1 switches to output 2 and input 2 switches to output 1
        
        if(R11(i)>r && R21(i)<r)
            pps(i) = 2;
            [N1] = popbuffer(N1);
            [N2] = popbuffer(N2);
        end
        
        % Input 1 switches to output 1 and input 2 switches to output 1
        
        if(R11(i)<r && R21(i)<r)
            P_sel = rand(1);
            
            % Select packet with the same probability
            if P_sel <= 0.5
                pps(i) = 1;
                [N1] = popbuffer(N1);
                [N2] = pushbuffer(N2);
            else
                pps(i) = 1;
                [N1] = pushbuffer(N1);
                [N2] = popbuffer(N2);
            end
        end
    end
    
    % Situation that input 1 has packet but input 2 doesn't 
    
    if(P1(i)<p && P2(i)>p)
        pps(i) = 1;
        [N1] = popbuffer(N1);
    end
    
    % Situation that input 2 has packet but input 1 doesn't 
    
    if(P1(i)>p && P2(i)<p)
        pps(i) = 1;
        [N2] = popbuffer(N2);
    end
    
    % Situation that input 1 and input 2 both don't have packet
    
    if(P1(i)>p && P2(i)>p)
        pps(i) = 0;
    end
end

throughput = sum(pps)/n_slot;

end
        
                
        
            
            

