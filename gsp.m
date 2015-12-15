function [fSets] = gsp(X, N)
% GSP-algorithm for 0-1 data set X.
% (https://en.wikipedia.org/wiki/GSP_Algorithm)

k = 1; % Level
candidates = 1:size(X,1); % At first level all rows form candidate set
fSets = {}; % Frequent sets return value, cell array elements indicate
% the row numbers in data matrix X, which form the frequent sets.

while ~isempty(candidates)
    freqs = scan(candidates, X, k);
    passed = {};
    for i = 1:length(freqs)
       if freqs(i) >= N
           fSets(end + 1) = {candidates(:,i)}; % Append candidate to frequent set
           passed(end + 1) = {candidates(:,i)}; % Append candidate to passed set
       end
    end
    k = k + 1; % Increase level
    candidates = generateCands(passed, k); % Generate new candidates
end
end

