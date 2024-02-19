% Task 1
clear all
close all
clc
%% 1 a)
% Consider the solution where all flows are routed through the path with the minimum
% propagation delay of the network. Is this a feasible solution? Justify
% your answer.

% R: Routing all flows through the minimum propagation delay path may not be feasible due to 
% potential issues with throughput, router capacity, energy consumption, link capacity, 
% bidirectional traffic, and topology constraints. A comprehensive analysis considering 
% these factors is necessary to optimize overall network performance.

load('InputDataProject2.mat')

v = 2e5; % speed of light in fibers in km/sec
D = L / v;

routerCapacity = 1000; % 1 Tbps = 1000 Gbps
linkCapacity = 100;   % 100 Gbps

% minimum delay path
[minDelay, startNode] = min(D(:, 1));
endNode = find(D(:, end) == min(D(:, end)));

totalThroughput = sum([T1(:, 3:4); T2(:, 3:4)]);

% capacity of the minimum delay path
minDelayPathCapacity = min(routerCapacity, linkCapacity) * (startNode ~= endNode);

feasibility = minDelayPathCapacity >= totalThroughput;

fprintf('Routing all flows through the minimum delay path is %s.\n', FeasibleOrNot(feasibility, 'Feasible', 'Not Feasible'));

function result = FeasibleOrNot(condition, true, false)
    if condition
        result = true;
    else
        result = false;
    end
end


