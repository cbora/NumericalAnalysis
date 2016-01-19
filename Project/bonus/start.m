A= [9, 1, 5, 7, 5, 3, 8, 3, 1, 1;
    8, 3, 5, 1, 1, 8, 7, 6, 7, 8;
    2, 8, 9, 7, 5, 5, 8, 3, 8, 1;
    4, 8, 7, 2, 7, 4, 6, 2, 5, 6;
    4, 4, 6, 4, 1, 3, 3, 9, 8, 3;
    2, 5, 7, 4, 8, 2, 2, 8, 5, 1;
    7, 7, 1, 3, 6, 5, 1, 6, 1, 5;
    3, 6, 5, 4, 5, 6, 9, 3, 2, 2;
    8, 6, 1, 1, 1, 1, 1, 9, 9, 4;
    2, 6, 6, 2, 4, 5, 4, 9, 2, 9];

B= [2; 6; 6; 2; 4; 5; 4; 9; 2; 9];

AB = [A, B];

disp('Gaussian');
X = gaussianElimination(AB);
disp((A*X)-B);
    

disp('Partial Pivoting');
X = partialPivoting(AB);
disp(' R matrix');
disp((A*X)-B);



% Condition number computation
a = sqrt(max(eigs(A'*A)));
A1 = inv(A);
b = sqrt(max(eigs(A1'*A1)));
K = a * b;
disp(K);