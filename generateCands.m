function [cands] = generateCands(passed, k)
% Generates new sets from passed sets.
% Obtain passed sets from cell array passed:
if k == 2
    sets = [];
    for i = 1:length(passed)
       sets(1,end+1) = passed{i}; 
    end
else
    sets = zeros(k-1, 0);
    for i = 1:length(passed)
        sets(1:k-1,end+1) = passed{i};
    end
end
% Create new combinations by appending vectors:
cands = combvec(sets, sets);

% Drop out duplicates:
cands = clearDuplicates(cands, k);

% If creation of new combinations was not possible return empty set
if size(cands, 2) == 0
    cands = []; 
end    
end

