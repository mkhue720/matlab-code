function [t, y] = improved_euler(fun, t0, tn, y0, h)
    t = t0:h:tn;
    y = zeros(size(t));
    t(1) = t0;
    y(1) = y0;
    for i = 2:length(t)
        k1 = fun(t(i-1), y(i-1));
        k2 = fun(t(i), y(i-1) + h * k1);
        y(i) = y(i-1) + h * (k1 + k2) / 2;
    end
end
