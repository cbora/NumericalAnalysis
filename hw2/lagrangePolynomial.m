function value = lagrangePolynomial(x, data)

n  = length(data);

value =0;
disp(data);
for i=1:n,
    numerator=1;
    denominator=1;
    for j=1:n,
        if i~=j,
            numerator = numerator * (x - data(j,1));
            denominator = denominator * (data(i,1) - data(j,1));
        end
        
    end
    value = value + (data(i,2)) * (numerator/denominator);
    
end

    
