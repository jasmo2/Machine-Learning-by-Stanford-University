function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
  m = length(y); % number of training examples

% You need to return the following variables correctly 
  J = 0;
  grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
  z = X * theta
  h = sigmoid(z)
  n = length(theta);

  % Because the algorithm initiates in 1 in octave it should be 2
  thetaJ = theta(2:n,1);

  el1 =  ((-y)' * log(h))
  el2 = (1 - y)' * log(1 - h)

  % sum() is neede; due to, we should replicate the sumatory over the vectors
  J = (sum(el1 - el2)/m) + ((lambda .* sum(thetaJ .^ 2))/(2 * m))

  tempTheta = theta;
  tempTheta(1) = 0;
  % Vectorize implementation
  grad = ((X' * (h - y)) + lambda .* tempTheta) / m

% =============================================================

end
