a = 1;
b = 10;
h = 0.1;
n = (b - a) / h;
x(1) = a; 
y(1) = 2.4; 

for i = 1:n
    x(i + 1) = a + (i - 1) * h; 
    y(i + 1) = y(i) + h * (x(i)^2 * y(i) + y(i)/35);
end

plot(x, y);
