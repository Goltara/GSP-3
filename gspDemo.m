% Test script for GSP-algorithm (Generalized Sequential Pattern) suom.
% tasoittainen algoritmi
% (https://en.wikipedia.org/wiki/GSP_Algorithm)
% Author: Tuomas Kynkaanniemi, 2015
% This implementation works only for 0-1 data.
close all;
clear all;

% Generate 0-1 data from uniform distribution:
X = randi([0 1], 3, 10);

% Run GSP-algorithm for data matrix X with support value N:
N = 4;
fSets = gsp(X, N);
