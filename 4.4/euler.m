function [t, y] = euler(fun, t0, tn, y0, h)
    t = t0:h:tn;
    y = zeros(size(t));
    t(1) = t0;
    y(1) = y0;
    for i = 2:length(t)
        y(i) = y(i-1) + h * fun(t(i-1), y(i-1));
    end
    disp('Gia tri cua y: ');
    disp(y);
end
