%Gauss Elimination Method B180123EE
A=input('Enter the coefficient matrix: ');
B=input('Enter the constant matrix: '); 
[p,n] = size(A); 

if any(diag(A)==0)
    error('The given is not solvable by gauss elimination method !')
end

for m=1:n-1
    for i=m+1:n
        fact = A(i,m) / A(m,m);
        for j = m:n
            A(i,j) = A(i,j) - fact*A(m,j);
        end
        B(i) = B(i) - fact*B(m);
    end
  A_and_b=[A B]
end


x(n) = B(n) / A(n,n);
for m = n-1:-1:1
    sums = B(m);
    for j = m+1: n
        sums = sums - A(m,j) * x(j);
    end
    x(m) = sums / A(m,m);
end
fprintf('The Solution of the system is x=%.4f y=%.4f z=%.4f\n' , x(1),x(2),x(3));