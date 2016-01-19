function value = piecewise(x, data)
SL = -9999;
SU = 9999;
epsilon = 5;

begin = 1;

ft = 0;
value = zeros(n)
  filled = 1;
for i=2:n-1,
	SLprime = max(SL, ((data(i,2) - epsilon) - data(begin, 2)) / (data(i,1) - data(begin,1)));
	SUprime = min(SL, ((data(i,2) + epsilon) - data(begin, 2)) / (data(i,1) - data(begin,1)));

    if SLprime <= SUprime,
        SL = SLprime;
        SU = SUprime;
    
    else,
      ft = ((SL+SU)/2) * (data(i,1) - data(begin,1)) + data(begin,2);
value(filed) = ft;
filled = filled + 1;		
        begin = i;
        SL = (data(i,2) - epsilon - data(begin,2)) / (data(i,1) - data(begin,1));
        SL =(data(i,2) + epsilon - data(begin,2)) / (data(i,1) - data(begin,1));
    end
end


    value(filed) = ((SL+SU)/2) (data(n,1) - data(begin,1)) + data(begin,2);
