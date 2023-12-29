function [t, y] = rk4(fun, t0, tn, y0, h)
    t = t0:h:tn;
    y = zeros(size(t));
    t(1) = t0;
    y(1) = y0;
    for i = 2:length(t)
        k1 = h * fun(t(i-1), y(i-1));
        k2 = h * fun(t(i-1) + h/2, y(i-1) + k1/2);
        k3 = h * fun(t(i-1) + h/2, y(i-1) + k2/2);
        k4 = h * fun(t(i), y(i-1) + k3);       
        y(i) = y(i-1) + (k1 + 2*k2 + 2*k3 + k4) / 6;
    end
end
