format long;
%задание 1
syms x;
f = exp(-x)*cos(x);
F = int(f,x);
f_check = diff(F, x);
disp('Неопределенный интеграл:');
disp(simplify(F));
disp('Проверка:');
disp(simplify(f_check));


%задание 2
fun = @(x) exp(-x).*cos(x);
y = integral(fun,0,2);
disp('Определенный интеграл (численно):');
fprintf('%.6f \n',y);

simF = int(f, x, 0, 2);
disp('Определенный интеграл (символически):');
fprintf('%.6f\n',simF);

%задание 3
fun2 = @(x,y) 18.*x.^2.*y.^2+32.*x.^3.*y.^3;
y_lower = @(x) -x.^2; 
y_upper = @(x) x.^(1/2); 
y = integral2(fun2,0,1,y_lower,y_upper);
disp('Вычисление двойного интеграла: ')
fprintf('%.6f\n',y);

%область
x_min = 0;
x_max = 1;

x = linspace(0, 1, 100);
y_lower = -x.^2; 
y_upper = x.^(1/2);

figure;
hold on;
fill([x, fliplr(x)], [y_upper, fliplr(y_lower)], 'r' , 'FaceAlpha', 0.5); % Заливка области
plot(x, y_lower, 'r', 'LineWidth', 1.5); % Нижняя граница
plot(x, y_upper, 'b', 'LineWidth', 1.5); % Верхняя граница
grid on;
xlabel('x');
xlabel('y');
title('Duble integral')

%задание 4
fun3 = @(x,y,z) y.^5.*sin(z);
y = integral3(fun3,0,2*pi,0,1,0,pi/2);
disp('Вычисление тройного интеграла: ')
fprintf('%.6f\n',y);

%ult
theta = linspace(0, pi/2, 50); 
phi = linspace(0, 2*pi, 50); 
[theta, phi] = meshgrid(theta, phi);
r = 1; 
x = r * sin(theta) .* cos(phi);
y = r * sin(theta) .* sin(phi);
z = r * cos(theta);

figure;
hold on;
surf(x, y, z, 'EdgeColor', 'none', 'FaceAlpha', 1);
t = linspace(0, 2*pi, 100);
fill3(cos(t), sin(t), zeros(size(t)), 'blue', 'FaceAlpha', 1);
xlabel('x'); ylabel('y'); zlabel('z');
hold off;
axis equal;
grid on;
view(45, 30);
