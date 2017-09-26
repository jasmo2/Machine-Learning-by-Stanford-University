function J = computeCostMulti(X, y, theta)
  %COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
  %   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
  %   parameter for linear regression to fit the data points in X and y

  % Initialize some useful values
  m = length(y); % number of training examples

  % You need to return the following variables correctly 
  J = 0;

  % ====================== YOUR CODE HERE ======================
  % Instructions: Compute the cost of a particular choice of theta
  %               You should set J to the cost.

  % h == mx1 vector column; h function
  % X == mxn matrix
  % theta == n=1 vector column 
  h = X* theta

  % errors == mx1 vector column
  % y  == mx1 vector column
  errors = h .- y

  % errors should be square
  % sqrErrors == mx1 vector column

  sqrErrors = errors .^ 2

  % The cost function should return a single number
  % so we should add all the errors together

  totalError = sum(sqrErrors)
  % =========================================================================
  
  J = (1/ (2 * m)) * totalError
end
