function g = sigmoid(z)
%   g = SIGMOID(z) computes the sigmoid of z.


s = length(z); % number of training examples
E = exp(-z);
add_1 = ones(s,1);
F = add_1+E;
g = add_1./F;


end

