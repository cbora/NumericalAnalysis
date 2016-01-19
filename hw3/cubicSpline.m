function[X] = cubicSpline(B)

  % Cubic spline interpolation using a recurrence formula, give the vector B is provided
  N = length(B);
r = sqrt(3) + 2;

alpha = zeros(1, N);
X = zeros(1, N);

%calculate the alpha values
alpha(1) = 0;
alpha(N) = B(N);

for i = 1:(N-1)
	  for k = 1:i
		    alpha(i) = alpha(i) + (-1)^(k-1) * B(i-k+1) / (r^k);
end
end

% solve for X.

for i = 1:N
	  for k = 1:(N-i+1)
		    X(i) = X(i) + (-1/r)^(k-1) * alpha(i+k-1);
end
end
