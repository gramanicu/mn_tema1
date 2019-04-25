function view_cost_vs_nc(file_points)
  % Load the points
  points = [];   
  points = load(file_points);
  points = points.points;
  
  cost = zeros(10,1);
  
  % Plot the cost depending on the number of clusters (1-10)
  for i = 1:10
    % Compute the centroids
    centroids = clustering_pc(points, i);
    
    % Compute the cost
    cost(i) = compute_cost_pc(points, centroids);
  endfor
  
  % Plot the data
  plot(cost);
end

