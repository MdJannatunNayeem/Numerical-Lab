a=1;
b=3;
n=7;

dx=(b-a)/n;
x=zeros(n,1);

for i=1:n
  x(i)=1+(i*dx);

end
sum=1+(1/x(7));

for i=1:n-1
  if (mod(i,2)==0)
  sum+=(2/x(i));
else
  sum+=(4/x(i));

end
end
sum=sum*(dx/3);
sum
