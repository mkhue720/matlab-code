
f = @(x) x^3 - x + 5;
df =@(x) 3*x^2-1;  
x0 = 1;
ss = 1e-3;
vonglap = 0;
x = x0;

while abs(f(x)) > ss && vonglap < 100
    x = x - f(x) / df(x); 
    vonglap = vonglap + 1;
end

if vonglap < 100
    fprintf('kq: %.6f\n', x);
else
    fprintf('khong co kq\n');
end
