function Y = piecewiseQuadraticInterpolation(A)
N = length(A);
n = N-1;
disp(n);
Z = zeros(1,N);
for i=1:n
    Z(i+1) = -Z(i) + 2*((A(i+1, 2) - A(i, 2))/ (A(i+1,1) - A(i,1)));     
end

a = zeros(1,n);
b = zeros(1,n);
c = zeros(1,n);
for i=1:n-1
    a(i) = (Z(i+1) - Z(i)) / (2*(A(i+1, 1) - A(i,1)));
    b(i) = -2*A(i,1)*a(i)+ Z(i);
    c(i) = A(i,1).^2 * a(i) - Z(i)*A(i,1) + A(i,2); 
    fprintf('$Q(%.0f) = %fx^2 + %fx + %f $\n', i, a(i), b(i), c(i));
end
Y=0;
for i=1:n
    x=linspace(A(i,1),A(i+1,1),100);
    y=a(i)*x.^2+b(i)*x+c(i);
    Y=[Y,y];
end
