%символьный метод
syms y(t)
ode = diff(y,t,2) - 2*diff(y,t) + y(t) == 2*t*exp(t)+exp(t)*sin(2*t);
Dy = diff(y, t);
conds = [y(0) == 0, Dy(0) == 0];
xysol = dsolve(ode(t),conds);
disp(xysol);

%численный метод
f = @(x, y) [y(2); 2*x*exp(x) + exp(x)*sin(2*x) + 2*y(2) - y(1)];
x0 = [0; 2];
y0 = [0; 0]; 
[x, y] = ode45(f, x0, y0); 

figure;
hold on;
fplot(xysol, [0, 2],  'LineWidth', 1.5);
grid on;
xlabel('t');
ylabel('y(t)');
title('syms');
plot(x, y(:,1),  'LineWidth', 1.5);
grid on;
title('ODE');
xlabel('x');
ylabel('y(x)');
hold off;