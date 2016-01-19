function Rnum = Romberg(f,a,b,m)
disp(f);
R = ones(m,m);
              
hmin = (b-a)/2^(m-1); 

for k = 1 : m
    
    h = 2^(k-1)*hmin;
    
	x = a : h : b;
	f1 = eval(f);
	k1 = length(f1);
    R(k,1) = 0.5*h*(f1(1) + 2*sum(f1(2:k1-1)) + f1(k1));
    fprintf(1, 'R(%d, 0) = %1.12f\n', k-1, R(k,1));
end                
for k = 2 : m 
    for kk = 1 : (m-k+1)
        R(kk,k) = R(kk,k-1)+(R(kk,k-1) - R(kk+1,k-1))/(4^(k-1)-1); 
        fprintf(1, 'R(%d, %d) = %1.12f\n', kk-1, k-1, R(kk, k));
    end         
end
Rnum = R(1,:); 
