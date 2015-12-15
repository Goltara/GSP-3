function [f] = scan(C, X, k)
% Scans data X at level k using candidate sets C. Returns frequencies f of
% candidate sets.
if k == 1
    f = zeros(1, length(C));
    % Loop through the whole data:
    for i = 1:size(X, 1)
       for j = 1:size(X, 2)
          if X(i, j) == 1
             f(i) = f(i) + 1; 
          end
       end
    end
else
   f = zeros(1, size(C, 2));
   % Loop through the data for all candidate sets C:
   for i = 1:size(C, 2)
      rows = C(:, i);
      for j = 1:size(X, 2)
         if all(X(rows, j) == 1)
            f(i) = f(i) + 1; 
         end
      end      
   end
end
end

