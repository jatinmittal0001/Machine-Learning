function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
		
% dimensions of X = m x n 		dimensions for centroids = no. of clusters x n

m = size(X,1);

	for i=1:m
		distance_vector = size(centroids, 1);
	
		for j=1:K
			vector_1 = X(i,:) - centroids(j,:);
			distance_vector(j,1) = sum(vector_1.^2);
		end

		[value, index] = min(distance_vector);
		idx(i) = index;
	end






% =============================================================

end

