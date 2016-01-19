function p = nevillesMethod(x, data)
n = length(data)-1;
Q = zeros(n+1, n+1);

Q(:,1) = data(:,2);
for i=1:n,
    
	for j=1:i,
		Q(i+1,j+1) = ((x - data(i-j+1, 1)) * Q(i+1, j) - (x - data(i+1,1)) * Q(i, j))/ (data(i+1,1) - data(i-j+1,1));
          
    end
    
end

    p = Q(n+1, n+1);
