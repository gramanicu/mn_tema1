% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	NC = 0; % the number of clusters
	points = []; % the matrix containing the points

	NC = load(file_params);
  points = load(file_points);
  points = points.points;
  
end

