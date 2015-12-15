function [s] = clearDuplicates(c, k)
% Removes duplicates from candidate set c and filters candidates of size k. 
s = zeros(k, 0);
% Remove duplicates and filter candidates of size k:
for i = 1:size(c, 2)
    current = unique(c(:, i));
    if size(current, 1) == k 
        s(:,end+1) = current;
    end
end
% Remove duplicate vectors from candidate set:
s = unique(s', 'rows')';
end

