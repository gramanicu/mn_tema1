function as_cluster = getClosestCentroids(points, centroids)
    % The cluster every point is assigned to
    as_cluster = zeros(size(points, 1), 1);
    
    % Iterate through the points
    for i=1:size(points,1);
      % We assume the first cluster is the closest one and 
      % calculate minimum distance
      clusterID = 1;
      dist_min = sumsq(points(i,:) - centroids(1,:));
      
      % For the rest of the clusters
      for j=2:size(centroids, 1);
        % Compute the distance to the 'j' cluster
        dist = sumsq(points(i,:) - centroids(j,:)); 
        
        % If the distance is lower, we assign the point to this cluster
        if(dist < dist_min)
          clusterID = j;
          dist_min = dist;
        endif                
      endfor
      as_cluster(i) = clusterID;
    endfor  
endfunction