function Lines1 = findPoints(image1,a) 

[m,n]=size(image1);
%indices stored in a row.
Rmin=ones(1,n)*m;
Rmax=ones(1,n);
for i=1:m
    for j=1:n
        if (image1(i,j)==255)
        if (i<Rmin(j)) 
            Rmin(j)=i;
        end
        if (i>Rmax(j))
            Rmax(j)=i;
        end
        end 
    end
end

if( a == 1)
    R=(Rmax-Rmin)/2;
end
if( a == 0)
    R=Rmax-Rmin;
end
R(R<0)=0;
figure;
plot(R);

Curve1Y=zeros(1,9);
Curve1X=zeros(1,9);
j=1;
for i=1:length(R)
    if(R(i)>0)
       Curve1Y(j)=R(i);
       Curve1X(j)=i;
    j=j+1;
    end
end
figure;
plot(Curve1X,Curve1Y);
Curve1 = [Curve1Y;Curve1X]';
Lines1 = [Curve1X;Curve1Y]';
 
% if (a == 0) %% side
%     [y, x] = size(A);
% 
%     Lines1=zeros(9,2);
%     n=1;
%     found=0;
%     % find x-values of the lines:
%     for i=1:x
%         found=0;
%         for j=1:y
%             if(A(j,i) == 255) && (found == 0)
%                 Lines1(n,1) = i;
%                 Lines1(n,2) = j;
%                 found=1;
%             end
%         end
%         if (found == 1)
%             n = n+1;
%         end
%     end
% end
% 
% if (a == 1) %% top
% 
% [m,n] =size(A);
% %indices stored in a row.
% Rmin=ones(1,n)*m;
% Rmax=ones(1,n);
% for i=1:m
%     for j=1:n
%         if (image1(i,j)==255)
%         if (i<Rmin(j)) 
%             Rmin(j)=i;
%         end
%         if (i>Rmax(j))
%             Rmax(j)=i;
%         end
%         end 
%     end
% end
% 
% for i=1:length(Rmin)
%     Lines
%     
% end
