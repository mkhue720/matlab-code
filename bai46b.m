A = [4 -1 0; -1 4 -1; 0 -1 4];
b = [11; -5; 9];

x = zeros(size(b)); 

maxIter = 100;
tolerance = 1e-6;

for iter = 1:maxIter
    x_new = x; 
    for i = 1:length(b)
        sigma = A(i, :) * x;
        x_new(i) = (b(i) - sigma + A(i, i) * x(i)) / A(i, i);
    end
    
    if norm(x_new - x, inf) < tolerance
        break;
    end
    
    x = x_new; 
end


if iter == maxIter
    disp('khong hoi tu sau so lan lap toi da');
else
    disp(['ket qua sau ', num2str(iter), ' lan lap la:']);
    disp(x);
end
