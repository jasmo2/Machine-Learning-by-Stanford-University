function p = predict(Theta1, Theta2, X)
% Theta1 has size 25 x 401
% Theta2 has size 10 x 26
% ------------------------
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
  m = size(X, 1);
  num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
  p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

 
% a-n should be a column vector
%  z-i = Theta1 * a-1

% Due to, the model has 2 Thetas. Means it has 2 'z' function

  a1 =  [ones(m,1) X] % row vector 
  z2 = a1 * Theta1'
  a2 = [ones(m,1) sigmoid(z2)]

  z3 = a2 * Theta2'
  a3 = sigmoid(z3)
  [pMax, pI] = max(a3, [], 2)
% =========================================================================
  p = pI

end
