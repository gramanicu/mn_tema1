% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
  iterate = true;
  steps = 20;
  
  % Randomly assigns points as centroids
  centroids = initCentroids(points, NC);
  
  % While the centroids change
  while iterate == true
    iterate = false;
    
    % Determine what cluster the points are assigned to
    indices = getClosestCentroids(points, centroids);
    
    % Computes the new centroids
    new_centroids = computeCentroids(points, indices, NC);
    
    % If the centroids changed, keep repeating the algorithm
    if(centroids != new_centroids) 
      centroids = new_centroids;
      iterate = true;
    endif
    if(steps > 0)
      iterate = true;
    endif
    steps--;
    
  endwhile
end
