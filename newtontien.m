x = [2000 2003 2005 2007 2010 2015 2018 2020 2022 2023];
y = [79.910416 81.4857463 83.832661 85.567463 87.967651 92.194536 95.545962 96.653736 99.329145 100.059299];
x0 = 2024;
    n = length(x);
    F = zeros(n, n);

    F(:, 1) = y';

    for j = 2:n
        for i = j:n
            F(i, j) = (F(i, j-1) - F(i-1, j-1)) / (x(i) - x(i-j+1));
        end
    end

    result = F(1, 1);
    for j = 2:n
        term = F(j, j);
        for i = 1:j-1
            term = term * (x0 - x(i));
        end
        result = result + term;
    end
    fprintf('Gia tri noi suy tai %.4f la: %.6f\n', x0, result);

