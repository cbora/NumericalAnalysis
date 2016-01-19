function pi = MonteCarlo(n)

darts = rand(n, 2);
dartsInside = ( sum(darts.^2,2) <= 1);

pi = 4*sum(dartsInside)/n;

end

