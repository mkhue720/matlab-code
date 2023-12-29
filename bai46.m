A = [4 -1 0; -1 4 -1; 0 -1 4];

[n, m] = size(A);

kq = true;

for i = 1:n
    hang = sum(abs(A(i,:))) - abs(A(i,i)); 
    if abs(A(i,i)) <= hang
        kq = false;
        break; 
    end
end

if kq
    disp('ma tran cheo troi');
else
    disp('khong phai ma tran cheo troi');
end
