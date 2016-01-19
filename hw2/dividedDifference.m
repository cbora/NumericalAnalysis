function p = dividedDifference(x, data)


n = length(data);
F = zeros(n, n);
for i=1:n,    
    for j=i:n,       
        if i ~= 1,
            F(j,i) = (F(j,i-1) - F(j-1,i-1)) / (data(j,1) - data(j-i+1, 1));      
        else
            F(j,i) = data(j,2);
        end
    end
end

% Construction of P(x)
p=0;
for i=1:n,
     f=1;
    if i == 1,
       p = F(i,i);
    else
         for j=1:i-1,       
           f = f * (x - data(j,1));   
         end
        p = p + f * F(i,i);
    end
end

    
