

% data for station 4 
x = [7, 14, 21, 28];
y = [58, 50, 54, 53];

data = [7, 58; 14, 50; 21, 54; 28, 53];

N = length(y);
B = zeros(1,N);
B(1) = -0.9139592;
B(N) = 0;

H = zeros(1, N-1);

for i=1: (N-1),
	H(i) = x(i+1) - x(i);
end

disp(H);

for i=2 : (N-1),
	B(i) = ((3/H(i)) * (y(i+1) - y(i))) - ((3/H(i-1)) * (y(i) - y(i-1)));
end

disp(B);

F = cubicSpline(B);

disp(F);
