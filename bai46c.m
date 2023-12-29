
A = [10 2 1; 1 10 2; 1 1 10];
b = [10; 12; 8];

x = [0; 0; 0];

maxIter = 5;
tolerance = 1e-6;

for iter = 1:maxIter
    x_new = x;
    
    for i = 1:length(b)
        sigma = A(i, 1:i-1) * x_new(1:i-1) + A(i, i+1:end) * x(i+1:end);
        x_new(i) = (b(i) - sigma) / A(i, i);
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
