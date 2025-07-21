format long;
x = 10;
while(abs(x)>=1)
    x = input('enter |x|<1: ');
end
y = (-5/2)*x;
b = 1;
i = 1;
while(1)
    b = b+ y;
    disp(b);
    if abs(y)<=10^(-5)
        break;
    end
    y = y*((5+(2*i))/(2+(2*i)))*(-1)*(x);
    i=i+1;
end

