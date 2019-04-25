function centroids = initCentroids(points, NC)
  % Creates an empty matrix, of size NC * 3
    centroids = zeros(NC, 3);
    % Generates a number vector of size "number of points", of numbers 1:size
    randx = randperm(size(points,1));
    
    % Assigns random points from the initial set as clusters
    centroids = points(randx(1:NC), :);
endfunction