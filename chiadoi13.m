f = @(x) x^2-exp(x)+10/35 ;
a = 2;
b = 3;
ss = 35*1e-3;
vonglap = 0;
x = (a + b) / 2;
while (b - a) > ss && vonglap < 5
    if f(x) * f(a) < 0
        b = x;
    else
        a = x;
    end  
    x = (a + b) / 2;
    vonglap = vonglap + 1;
end
fprintf('kq: %.6f\n', x);