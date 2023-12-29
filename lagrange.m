z = sym('x');
x = [2000 2003 2005 2007 2010 2015 2018 2020 2022 2023];
y = [79.910416 81.4857463 83.832661 85.567463 87.967651 92.194536 95.545962 96.653736 99.329145 100.059299];
t = 2024;
s = 0;

for i = 1:length(x)
    p = 1;
    for j = 1:length(x)
        if j ~= i
            p = p * ((z - x(j)) / (x(i) - x(j)));
        end
    end
    s = s + p * y(i);
end

s = expand(s);

fprintf('pt noi suy Lagrange: %s\n', char(s));

kq = 0;
for i = 1:length(x)
    s = y(i);
    for j = 1:length(x)
        if j ~= i
            s = s * (t - x(j)) / (x(i) - x(j));
        end
    end
    kq = kq + s;
end

fprintf('gt noi suy Lagrange tai t: %.4f\n', double(kq));
