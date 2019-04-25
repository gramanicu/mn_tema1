% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
  plot_centroids = false;
  % Determines to which cluster is each point assigned
  cluster_assigned = getClosestCentroids(points, centroids);
  
  % Colors for each cluster
  colors = zeros(size(centroids,1), 3);
  
  % Randomly generate the colors
  for i = 1:size(centroids,1)
    colors(i, :) = [rand(1), rand(1), rand(1)];
  endfor
  
  % Plot the points
  scatter3(points(:, 1), points(:, 2), points(:, 3), 20, colors(cluster_assigned(:),:), 'filled');
  % Plot the centroids
  if(plot_centroids)
    hold on;
    scatter3(centroids(:, 1), centroids(:,2), centroids(:,3), 200, colors(:, :),'filled');
    hold off;
  endif
end

