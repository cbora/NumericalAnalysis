for i=1:10
    n = 8.^(i-1);
    D = MonteCarlo(n);
    fprintf('%.0f & \t %.12f \n', n, D);
end
