f = @(y,t) (-2.2067*10^-12*(y^4-81*10^8));
y0=1200;
t0=0;
tf=480;
h=240;
n =(tf-t0)/h;
yi=y0;
ti=t0;
for i=1:n
    yf = yi + h*f(yi,ti);
    yi=yf;


    ti=ti+h;
end
yf

