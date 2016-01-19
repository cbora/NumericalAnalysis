station1 = [1,46; 5,45; 8,51; 12,58; 15,56; 19,54; 22,58; 26,56; 29,57];
station2 = [2,53; 4,60; 9,55; 11,50; 16,58; 18,51; 23,51; 25,56; 30,51];
station3 = [6,56; 13,51; 20,58; 27,51];
station4 = [7,58; 14,50; 21,54; 28,53];


a = zeros(length(station4));
a = piecewise(station4);
disp(a);


lagrange = zeros(4);
nevilles = zeros(4);
divided = zeros(4);

lagrange(1) = lagrangePolynomial(10, station1);
lagrange(2) = lagrangePolynomial(10, station2);
lagrange(3) = lagrangePolynomial(10, station3);
lagrange(4) = lagrangePolynomial(10, station4);

for i=1:4,
	fprintf('Station: %d, Lagrange method: T=10, P = %d \n', i, lagrange(i));

end

nevilles(1) = nevillesMethod(10, station1);
nevilles(2) = nevillesMethod(10, station2);
nevilles(3) = nevillesMethod(10, station3);
nevilles(4) = nevillesMethod(10, station4);

for i=1:4,
	fprintf('Station: %d, Nevilles method: T=10, P = %d \n', i, nevilles(i));
end

disp(nevilles(1));




divided(1) = dividedDifference(10, station1);
divided(2) = dividedDifference(10, station2);
divided(3) = dividedDifference(10, station3);
divided(4) = dividedDifference(10, station4);

for i=1:4,
	fprintf('Station: %d, Divided difference method: T=10, P = %d \n', i, divided(i));

end




