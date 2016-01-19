function X = partialPivoting(A)

[row, col] = size(A);
X = zeros(row);

for i=1:(row-1)
    p = i;
    if(A(p,i) == 0)
        C = A(i,:);
        A(i,:) = A(p+1,:);
        A(p+1,:) = C;
    end    
    for j=i+1:row
        m = A(j,i) / A(i,i);
        A(j,:) = A(j,:) - m*A(i,:);
    end
    disp(A);
end

if(A(row,row) == 0)
    disp('No solution exist');
    return
end

X = zeros(row,1);
X(row) = A(row, row+1)/A(row, row);

for i=(row-1):-1:1
    disp('here');
    X(i) = A(i, row+1);
    sum = 0;
    for j=i+1:row
        sum = sum + (A(i,j) * X(j));
        fprintf('%0.5f sum + %0.5f A(i,j_) * %0.5f X(j)', sum, A(i,j), X(j));
    end
    X(i) = (X(i) - sum)/A(i,i);
end
