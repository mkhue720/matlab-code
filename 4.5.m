lorenz = @(t, xyz) [10*(xyz(2) - xyz(1)); 23*xyz(1) - xyz(2) - xyz(1)*xyz(3); xyz(1)*xyz(2) - (8/3)*xyz(3)];

t0 = 0;
tf = 30;
xyz0 = [1; 1; 1]; 
h = 0.01; 
t = t0:h:tf;
n = length(t);
xyz = zeros(3, n);
xyz(:,1) = xyz0;

for i = 1:(n - 1)
    k1 = h * lorenz(t(i), xyz(:,i));
    k2 = h * lorenz(t(i) + h/2, xyz(:,i) + k1/2);
    k3 = h * lorenz(t(i) + h/2, xyz(:,i) + k2/2);
    k4 = h * lorenz(t(i) + h, xyz(:,i) + k3);
    xyz(:,i+1) = xyz(:,i) + (k1 + 2*k2 + 2*k3 + k4) / 6;
end

figure;
plot(t, xyz(1,:), 'r', t, xyz(2,:), 'g', t, xyz(3,:), 'b');
title('Do thi)');
xlabel('thoi gian t');
ylabel('gia tri x, y, z');
legend('x(t)', 'y(t)', 'z(t)');
grid on;
