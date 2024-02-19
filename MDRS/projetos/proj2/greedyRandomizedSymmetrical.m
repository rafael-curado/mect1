function [sol, load] = greedyRandomizedSymmetrical(nNodes, Links, T1, T2, sP, nSP)
    nFlows1 = size(T1, 1);
    nFlows2 = size(T2, 1);
    
    % Common path assignment for both services
    commonPathIndex = randi([1, nSP(1)]);  % Randomly choose a common path index
    
    % Initialize solution vector
    sol = zeros(2, max(nFlows1, nFlows2));
    sol(1, :) = commonPathIndex;  % Common path for Service 1
    sol(2, :) = commonPathIndex;  % Common path for Service 2
    
    % Calculate loads for the common path
    Loads = calculateLinkLoads(nNodes, Links, T1, sP, sol);
    load = max(max(Loads(:, 3:4)));
end
