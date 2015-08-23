%% mean2d: return mean value of 2d matrix
function [outputs] = mean2d(matrix)
	outputs = mean(mean(matrix));
