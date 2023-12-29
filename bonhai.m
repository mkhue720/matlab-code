function [x1, ep, n] = bonhai(f, x0, ss, nmax)
    n = 0;
    ep = ss;
    while (ep >= ss) && (n < nmax)
        x1 = x0 - subs(f, x0) / subs(diff(f), x0);
        ep = abs((x1 - x0) / x0);
        n = n + 1;
        x0 = x1;
    end

    x1 = double(x1);
    ep = double(ep)
end
