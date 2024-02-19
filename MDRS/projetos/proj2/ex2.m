% Exercicio 1

%% ex1.a)
clear all
close all
clc

% Initial variables
load('InputDataProject2.mat');
nNodes = size(Nodes, 1);
nLinks = size(Links, 1);
nFlows1 = size(T1, 1);

lc = 100;        % Link capacity of 100Gbps
nc = 1000;       % Node capacity of 1000Gbps

k = 2;
sP = cell(1, nFlows1);
nSP = zeros(1, nFlows1);
for f = 1 : nFlows1
    [shortestPath, totalCost] = kShortestPath(L, T1(f, 1), T1(f, 2), k);
    sP{f} = shortestPath;
    nSP(f) = length(totalCost);
end

t = tic;
timeLimit = 10;
bestLoad = inf;
contador = 0;
somador = 0;

while toc(t) < timeLimit
    % Greedy randomized start
    [sol, load] = greedyRandomizedStrategy(nNodes, Links, T1, sP, nSP);

    % Hill Climbing
    [sol, load, Loads] = HillClimbingStrategy(nNodes, Links, T1, sP, nSP, sol, load);

    % Calculate energy consumption
    energy = sum(sum(Loads(:, 3:4)));

    if load < bestLoad
        bestSol = sol;
        bestLoad = load;
        bestLoads = Loads;
        bestLoadTime = toc(t);
    end
    contador = contador + 1;
    somador = somador + load;
end

% Calculate additional metrics
averageLinkLoad1 = somador / contador;

[Loads, linkEnergy] = calculateLinkLoadEnergy(nNodes, Links, T1, sP, sol, L, lc);

nodeEnergy = calculateNodeEnergy(T1, sP, nNodes, nc, sol);

sleepingNodes = '';
countNodes = 0;
for i = 1 : length(bestLoads)
    if max(bestLoads(i, 3:4)) == 0
        sleepingNodes = append(sleepingNodes, '{', num2str(bestLoads(i,1)), ',', num2str(bestLoads(i,2)), '}');
        countNodes = countNodes + 1;
    end
end

fprintf('\nService 1:\n')
fprintf('\tWorst Link Load = %.2f Gbps\n', bestLoad);
fprintf('\tAverage Link Load = %.2f Gbps\n', averageLinkLoad1);
fprintf('\tNetwork energy consumption: %.2f\n', linkEnergy + nodeEnergy);
fprintf('\tNumber of Cycles Run by the Algorithm = %d\n', contador);
fprintf('\tNumber of links not supporting any traffic flow = %d\n', countNodes);
fprintf('\tList of links in sleeping mode:%s\n', sleepingNodes);
fprintf('\tTime = %.7f\n', bestLoadTime);



%% ex1.a)
clear all
close all
clc

% Initial variables
load('InputDataProject2.mat');
nNodes = size(Nodes, 1);
nLinks = size(Links, 1);
nFlows1 = size(T2, 1);

lc = 100;        % Link capacity of 100Gbps
nc = 1000;       % Node capacity of 1000Gbps

k = 2;
sP = cell(1, nFlows1);
nSP = zeros(1, nFlows1);
for f = 1 : nFlows1
    [shortestPath, totalCost] = kShortestPath(L, T2(f, 1), T2(f, 2), k);
    sP{f} = shortestPath;
    nSP(f) = length(totalCost);
end

t = tic;
timeLimit = 10;
bestLoad = inf;
contador = 0;
somador = 0;

while toc(t) < timeLimit
    % Greedy randomized start
    [sol, load] = greedyRandomizedStrategy(nNodes, Links, T2, sP, nSP);

    % Hill Climbing
    [sol, load, Loads] = HillClimbingStrategy(nNodes, Links, T2, sP, nSP, sol, load);

    % Calculate energy consumption
    energy = sum(sum(Loads(:, 3:4)));

    if load < bestLoad
        bestSol = sol;
        bestLoad = load;
        bestLoads = Loads;
        bestLoadTime = toc(t);
    end
    contador = contador + 1;
    somador = somador + load;
end

% Calculate additional metrics
averageLinkLoad1 = somador / contador;

[Loads, linkEnergy] = calculateLinkLoadEnergy(nNodes, Links, T2, sP, sol, L, lc);

nodeEnergy = calculateNodeEnergy(T2, sP, nNodes, nc, sol);

sleepingNodes = '';
countNodes = 0;
for i = 1 : length(bestLoads)
    if max(bestLoads(i, 3:4)) == 0
        sleepingNodes = append(sleepingNodes, '{', num2str(bestLoads(i,1)), ',', num2str(bestLoads(i,2)), '}');
        countNodes = countNodes + 1;
    end
end

fprintf('\nService 2:\n')
fprintf('\tWorst Link Load = %.2f Gbps\n', bestLoad);
fprintf('\tAverage Link Load = %.2f Gbps\n', averageLinkLoad1);
fprintf('\tNetwork energy consumption: %.2f\n', linkEnergy + nodeEnergy);
fprintf('\tNumber of Cycles Run by the Algorithm = %d\n', contador);
fprintf('\tNumber of links not supporting any traffic flow = %d\n', countNodes);
fprintf('\tList of links in sleeping mode:%s\n', sleepingNodes);
fprintf('\tTime = %.7f\n', bestLoadTime);

