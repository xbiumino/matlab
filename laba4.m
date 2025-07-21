x1 = linspace(-5, 0);
x2 = linspace(0, 5); 
y1=2*log(1+x1.^2);
y2=(1+cos(x2).^2).^(3/5);


figure;
hold on;
plot(x1,y1,'b');
plot(x2,y2,'r');
plot(0,2*log(1),'o','MarkerSize', 4, 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black');
plot(0,(1+cos(0).^2).^(3/5),'o','MarkerSize', 4, 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'white');
hold off;

title('GRAF FOR Y');
xlabel('X');
ylabel('Y');
legend('2*ln(1 + x^2), x \leq -1', '(1 + cos^2(x))^{3/5}, x > -1');
grid on;

% 2 graf
y = zeros(size(x1));
ye = zeros(size(x2));

for i=1:length(x1)
    y(i)=2*log(1+x1(i).^2);
end
for j=1:length(x2)
    ye(j)=(1+cos(x2(j)).^2).^(3/5);
end

figure;
hold on;
plot(x1,y,'b','LineStyle',':','LineWidth',2);
plot(x2,ye,'r','LineStyle','--','LineWidth',1);
plot(0,2*log(1),'o','MarkerSize', 4, 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'black');
plot(0,(1+cos(0).^2).^(3/5),'o','MarkerSize', 4, 'MarkerEdgeColor', 'black', 'MarkerFaceColor', 'white');
hold off;

title('GRAF FOR Y');
xlabel('X');
ylabel('Y');
legend('2*ln(1 + x^2), x \leq -1', '(1 + cos^2(x))^{3/5}, x > -1');
grid on;