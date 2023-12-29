f = @(x) x^3-x-1;
x0 = -2;
x1 = 2;
ss = 1e-2;
vonglap = 0;

while vonglap < 100
    x2 = x1 - f(x1) * (x1 - x0) / (f(x1) - f(x0)); 
    if abs(x2 - x1) < ss
        fprintf('kq: %.6f\n', x2);
        break;
    end 
    x0 = x1;
    x1 = x2;
    vonglap = vonglap + 1;
end

if vonglap >= 100
    fprintf('khong co kq.\n');
end
