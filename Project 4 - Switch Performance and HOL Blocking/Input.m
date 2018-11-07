function [nstate, efficiency1, efficiency2] = Input(p,r1,r2,tend)
%
% nstate: record how many packets are present in input1 and input2
% p: the arriving probability
% r1: the probability to target at output 1
% r2: the probability to target at output 2
% tend: continue until tend

% nstate how many packet in each of the input
nstate = [p > rand(1) , p > rand(1) ];  
passed = 0; 
maxpassed = 0; 

% r1 = 0.5; r2 = 0.5; 
% nInput1 = nstate(1); 
attempt = [r1 > rand(1) , r1> rand(1)];
nextAttempt = [r1 > rand(1) , r1> rand(1)]; 

% nInput2 = nstate(2);
priority = 1; 
t = 1;

while t<tend
    if sum(nstate) > 0
        if nstate(1) > 0 && nstate(2) == 0
            nstate(1) = nstate(1) - 1;
            passed = passed + 1;
            maxpassed = maxpassed + 1;
        else
            if nstate(1) == 0 && nstate(2) > 0
                nstate(2) = nstate(2) - 1;
                passed = passed + 1;
                maxpassed = maxpassed + 1;
            else % when both have packets at the input
                if attempt (1) ~= attempt (2)
                    nstate(1) = nstate(1) - 1;
                    nextAttempt = [r1 > rand(1) , r1 > rand(1)]; 
                    passed = passed + 2;
                    maxpassed = maxpassed + 2;
                else
                    if priority == 1
                        nstate(1) = nstate(1) - 1;
                        priority = - priority;
                        nextAttempt = [r1 > rand(1) , attempt(2)];
                    else
                        nstate(2) = nstate(2) - 1;
                        priority = - priority;
                        nextAttempt = [attempt(1) , r1 > rand(1)];
                    end
                    passed = passed + 1;
                    maxpassed = maxpassed + 2;
                end
            end
        end
        % else
        %     nextAttempt = [r1 > rand(1) , r2 > rand(1)];
    end
    
    % New packet arrives
    nstate = nstate + [p>rand(1) ,p>rand(1)];
    attempt = nextAttempt;
    t = t+1;
    
    % efficiency = passed/t;
    % nstate
    
end

efficiency1 = passed/maxpassed;
efficiency2 = passed/(t*2);
