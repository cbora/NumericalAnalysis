A = imread('image1.png'); 
Curve1 = findPoints(A,0);
disp(Curve1);
imshow(A);

B = imread('image2.png');
Curve2 = findPoints(B,0);
disp(Curve2);
imshow(B);

C = imread('image3.png');
Curve3 = findPoints(C,1);
disp(Curve3);
imshow(C);

disp('c1');
Curve1 = piecewiseQuadraticInterpolation(Curve1);
disp('c1');
Curve2 = piecewiseQuadraticInterpolation(Curve2);
disp('c2');
Curve3 = piecewiseQuadraticInterpolation(Curve3);

Lw = length(Curve2);
Ll = length(Curve1);
matCurve = zeros(Lw, Ll);
for i=1:Lw
%      matCurve(i,:) = Curve1(:,2).*Curve2(i,2);
     matCurve(i,:) = Curve1.*Curve2(i);
end

for j=1:length(Curve3)
    for i=1:Lw
%          h=Curve3(j,2);
          h=Curve3(j);

        if(i<Lw/2-h||i>Lw/2+h)
             matCurve(i,j)=0;
        end
    end
end
matCurve=matCurve/max(max(matCurve))*200;
[X,Y]=meshgrid(1:Ll,1:Lw);
V = peaks(X,Y);
figure
mesh(X,Y, matCurve);