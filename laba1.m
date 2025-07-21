a=4.72;
b=1.25;
d=-0.01;
i=2;
k=3;
x=2.25;
y = ((a*x.^2+abs(d))/(a+b).^2)-10000*(nthroot(((k*x)/(a+b).^2),5))-(cos(i)/sin(k*x));
fprintf('%.13f',y);
