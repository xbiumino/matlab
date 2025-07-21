x1 = linspace(-2, 0);
x2 = linspace(0, 5); 
y = zeros(size(x1));
ye = zeros(size(x2));

for i=1:length(x1)
    y(i)=exp(-2*x1(i))*abs(x1(i))/(1+x1(i)^2);
end
for j=1:length(x2)
    ye(j)=(1+x2(j)^2)^(1/2);
end

figure;
hold on;
plot(x1,y,'b','LineStyle',':','LineWidth',2);
plot(x2,ye,'r','LineStyle','--','LineWidth',1);
hold off;

title('GRAF FOR Y');
xlabel('X');
ylabel('Y');
legend('2*ln(1 + x^2), x \leq -1', '(1 + cos^2(x))^{3/5}, x > -1');
grid on;