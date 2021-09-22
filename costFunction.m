function [J, grad] = costFunction(theta, X, y)


% Initialize some useful values
m = length(y); % number of training examples
 E = exp(-X*theta);
add_1 = ones(m,1);
F = add_1+E;
h_ = add_1./F;
%h_ = sigmoid(X*theta)

J = 0;
grad = zeros(size(theta));



J = (-1/m)* sum(y.*log(h_) + (1-y).*log(add_1-h_) );
grad(1) = (1/m) *sum((h_-y).*X(:,1));
grad(2) = (1/m) *sum((h_-y).*X(:,2));
grad(3) = (1/m) *sum((h_-y).*X(:,3));




end

