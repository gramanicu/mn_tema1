% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
  % Determines to which cluster is each point assigned
  cluster_assigned = getClosestCentroids(points, centroids);
  
  % For each point, determine the cost and add it to the total cost
  for i = 1:size(points, 1)
    % The cost is the distance from the point to the centroid
    dist = norm(centroids(cluster_assigned(i), :) - points(i, :));
    cost = cost + dist; 
  endfor
end

