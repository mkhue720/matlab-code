x = [2000 2003 2005 2007 2010 2015 2018 2020 2022 2023];
y = [79.910416 81.4857463 83.832661 85.567463 87.967651 92.194536 95.545962 96.653736 99.329145 100.059299];

A = [x', ones(size(x'))];
n = length(x);
heso = A\y';
goc = heso(1);
chan = heso(2);
yi = goc * x + chan;
ss = y - yi;
tbc = sum(ss.^2) / n;
disp('ham xap xi:');
disp(['y = ', num2str(goc), ' * x + ', num2str(chan)]);
disp(['sai so trung binh: ', num2str(tbc)]);
figure;
plot(x, y, 'o', x, yi, '-');
legend('Du lieu', 'Ham xao xi');
xlabel('x');
ylabel('y');
title('Xap xi binh phuong be nhat');
