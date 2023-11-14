a=1;
b=3;
n=7;

dx=(b-a)/n;
x=zeros(n,1);

for i=1:n
  x(i)=1+(i*dx);
  disp (x(i));
end
sum=1;

for i=1:n-1
  sum+=(2/x(i));

end

sum+= 1/x(7);
sum=sum*dx/2
