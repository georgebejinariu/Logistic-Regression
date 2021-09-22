function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta

m = size(X, 1); % Number of training examples

p = zeros(m, 1);

E = exp(-X*theta);
add_1 = ones(m,1);
F = add_1+E;
h_ = add_1./F;

for i = 1:m
    if h_(i) >= 0.5
        p(i) = 1;
    else
        p(i) = 0;
    end;
    
end;






% =========================================================================


end

