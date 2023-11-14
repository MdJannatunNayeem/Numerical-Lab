a = [1,10,100,1000;1,15,225,3375;1,20,400,8000;1,22.5,506.25,11390.625];
b = [227.04;362.78;517.35;602.97];
n = length(b);

for k=1:n-1
  for i=k+1:n
    fac=a(i,k)/a(k,k);
    a(i,k:n)=a(i,k:n)-fac*a(k,k:n);
    b(i)=b(i)-fac*b(k);
  endfor
endfor

x=zeros(n,1);

for i=n:-1:1
  x(i)=(b(i)-a(i,i+1:n)*x(i+1:n))/a(i,i);
end

z=x(1)+x(2)*16+x(3)*16^2+x(4)*16^3

