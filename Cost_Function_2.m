function Cost_Function_2(x, y, x0)
    syms a b c
    m = sum(x.^4);
    n = sum(x.^3);
    p = sum(x.^2);
    q = sum(x);
    s = sum(x.^2.*y);
    t = sum(x.*y);
    u = sum(y);
 
    pt1 = m * a + n * b + p*c - s;
    pt2 = n * a + p * b + q*c - t;
    pt3 = p * a + q * b + length(x) * c - u;
    
    [a, b, c] = solve(pt1, pt2, pt3);
    
    disp('H? s? a:')
    disp(double(a))
    disp('H? s? b:')
    disp(double(b))
    disp('H? s? c:')
    disp(double(c))
    
    y0 = a * x0^2 + b * x0 + c;
    
    disp('K?t qu? x?p x?: ') 
    disp(double(y0))
end
