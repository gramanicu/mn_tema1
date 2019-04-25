function centroids = computeCentroids(points, as_clusters, NC)
  % Initialize the centroids (with a value of 0)
  centroids = zeros(NC, 3);
  
  % For each cluster
  for i = 1:NC
    % Get all points assigned to this cluster, so we can
    % compute its size
    cluster_points = points(as_clusters == i, :);
    cluster_size = size(cluster_points, 1);
    
    % Compute the mean of the cluster's points (average)
    p_mean = [sum(cluster_points(:,1)), sum(cluster_points(:,2)), sum(cluster_points(:,3))];
    if(cluster_size!=0) 
      p_mean = p_mean / cluster_size;
    endif
    
    % Assign the mean as the new cluster centroid
    centroids(i, :) = p_mean;
  endfor
endfunction