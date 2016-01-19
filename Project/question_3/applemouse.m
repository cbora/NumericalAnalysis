front=imread('MouseSide01.png');
Curve1=CurveMesh(front,'image1.png');
colormap(spring);

figure
side=imread('MouseSide02.png');
Curve2=CurveMesh(side,'image2.png');
colormap(summer)


figure
whole=imread('MouseSide03.png');
Curve3=CurveMesh(whole,'image3.png');

colormap(winter)


Lw=length(Curve2);
Ll=length(Curve1);
matCurve=zeros(Lw,Ll);
% create a 2D matrix.
for i=1:Lw
    matCurve(i,:)=Curve1.*Curve2(i);
end
% use curve 3 to cut the mesh by limiting the range. 
    for j=1:length(Curve3)
        for i=1:Lw
            h=Curve3(j);
    if(i<Lw/2-h||i>Lw/2+h)
       matCurve(i,j)=0; 
    end
        end
    end
% normalize
matCurve=matCurve/max(max(matCurve))*200;

[X,Y]=meshgrid(1:Ll,1:Lw);
figure
mesh(X,Y,matCurve)